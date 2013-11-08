module NoVersionAutocompleteVersionPatch
  def self.included(base)
    unloadable
    
    base.extend(ClassMethods)
    base.send(:include, InstanceMethods)
    base.class_eval do
      #always returns false so that all not completed issues are treated as open
      def completed?
        false
      end
    end
  end
  
  module ClassMethods
  end
  
  module InstanceMethods
  end
end

Version.send(:include, NoVersionAutocompleteVersionPatch)