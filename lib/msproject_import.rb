module MsprojectImport
	USE_WORK = true
	IMPORT_SUMMARY = false
	OUT_LINE_LEVEL = '0'
	
	class << self
	
		def parent_tracker_default
			Setting.plugin_msproject_import['parent_tracker_default']
		end
		
		def tracker_default
			Setting.plugin_msproject_import['tracker_default']
		end
		
		def task_tracker_default
			Setting.plugin_msproject_import['task_tracker_default']
		end
		
		def story_tracker_default
			Setting.plugin_msproject_import['story_tracker_default']
		end
	
		def out_line_level
			if Setting.plugin_msproject_import['out_line_level'].nil?
				OUT_LINE_LEVEL
			else
				Setting.plugin_msproject_import['out_line_level'].strip
			end
		end
		
		def use_work
			if Setting.plugin_msproject_import['use_work'].nil?
				USE_WORK
			else
				if Setting.plugin_msproject_import['use_work'] == '1'
					true
				else
					false
				end
			end
		end
		
		def import_summary
			if Setting.plugin_msproject_import['import_summary'].nil?
				IMPORT_SUMMARY
			else
				if Setting.plugin_msproject_import['import_summary'] == '1'
					true
				else
					false
				end
			end
		end
	end
end