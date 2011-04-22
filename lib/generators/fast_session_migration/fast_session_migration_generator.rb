class FastSessionMigrationGenerator < Rails::Generators::NamedBase
  include Rails::Generators::Migration  
  source_root File.expand_path('../templates', __FILE__)
  
  def create_migration
    migration_template  'migration.rb', 'db/migrate/add_fast_sessions'
  end

  protected

  def default_session_table_name
    ActiveRecord::Base.pluralize_table_names ? 'fast_session'.pluralize : 'fast_session'
  end
  
  def session_table_name
    default_session_table_name
  end

  # FIXME: Should be proxied to ActiveRecord::Generators::Base
  # Implement the required interface for Rails::Generators::Migration.
  def self.next_migration_number(dirname) #:nodoc:
    if ActiveRecord::Base.timestamped_migrations
      Time.now.utc.strftime("%Y%m%d%H%M%S")
    else
      "%.3d" % (current_migration_number(dirname) + 1)
    end
  end

end
