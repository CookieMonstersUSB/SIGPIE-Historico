from django.conf import settings

class DatabaseAppsRouter(object):
    """
    A router to control all database operations on models for different
    databases.

    In case an app is not set in settings.DATABASE_APPS_MAPPING, the router
    will fallback to the `default` database.

    Settings example:

    DATABASE_APPS_MAPPING = {'app1': 'db1', 'app2': 'db2'}
    """

    def db_for_read(self, model, **hints):
        """"Point all read operations to the specific database."""
        database = getattr(model, '_DATABASE', 'default')
        return database

    def db_for_write(self, model, **hints):
        """Point all write operations to the specific database."""
        database = getattr(model, '_DATABASE', 'default')
        return database

    def allow_relation(self, obj1, obj2, **hints):
        """Allow any relation between apps that use the same database."""
        database1 = getattr(obj1, '_DATABASE', 'default')
        database2 = getattr(obj2, '_DATABASE', 'default')
        db_obj1 = settings.DATABASE_APPS_MAPPING.get(database1)
        db_obj2 = settings.DATABASE_APPS_MAPPING.get(database2)
        if db_obj1 and db_obj2:
            if db_obj1 == db_obj2:
                return True
            else:
                return False
        return None

    def allow_syncdb(self, db, model):
        """Make sure that apps only appear in the related database."""
        database = getattr(model, "_DATABASE", None)
        if database:
            if db in settings.DATABASE_APPS_MAPPING.values():
                return settings.DATABASE_APPS_MAPPING.get(database) == db
            elif database in settings.DATABASE_APPS_MAPPING:
                return False
        return None
