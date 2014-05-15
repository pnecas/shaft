require 'find'
module Shaft
	def self.shaft
		order = ARGV 
		case order[0]
		when "create","-c","project"
			if order[1]
				if !File::directory?( order[1] )
					Dir.mkdir(order[1])
					puts "\033[42;37m正在创建...\033[0m"
					Dir.mkdir(order[1]+"/iOS")
						Dir.mkdir(order[1]+"/iOS/输出")
						Dir.mkdir(order[1]+"/iOS/源文件")
						Dir.mkdir(order[1]+"/iOS/切图")
						Dir.mkdir(order[1]+"/iOS/历史")
							Dir.mkdir(order[1]+"/iOS/历史/1.0.0")
						Dir.mkdir(order[1]+"/iOS/闪屏图标")
						Dir.mkdir(order[1]+"/iOS/效果图")
							Dir.mkdir(order[1]+"/iOS/效果图/规范")
					Dir.mkdir(order[1]+"/Android")
						Dir.mkdir(order[1]+"/Android/输出")
						Dir.mkdir(order[1]+"/Android/源文件")
						Dir.mkdir(order[1]+"/Android/切图")
						Dir.mkdir(order[1]+"/Android/历史")
							Dir.mkdir(order[1]+"/Android/历史/1.0.0")
						Dir.mkdir(order[1]+"/Android/闪屏图标")
						Dir.mkdir(order[1]+"/Android/效果图")
							Dir.mkdir(order[1]+"/Android/效果图/规范")
					Dir.mkdir(order[1]+"/原型")
					Dir.mkdir(order[1]+"/需求")
	   				Find.find(order[1]+"/") { |path| puts path }
					puts "\033[42;37m项目创建完毕，请遵守「视觉设计公约1.0」进行设计，谢谢合作！\033[0m"
				else
					puts "\033[41;37m该项目:「"+order[1]+"」已经存在，请重新输入...\033[0m"
				end
			else
				puts "\033[41;37m请输入要创建的项目名称。\033[0m"
			end
		when "-v" , "version"
			puts "\033[43;37mShaft Design StartUp Kit.\033[0m\n\033[41;37mVersion 1.-5.-2\033[0m\n\033[42;37mBy Luxu @ Mindrunner\033[0m"
		when "?" , "-help" ,"-?" ,"help"
			puts "\033[42;37m-v, version 版本信息\n-c, create, project 创建一个项目\n 其他功能陆续加入中，谢谢支持\033[0m"
		else 
			puts "\033[43;37m输入 -? 或 -help 或 help 获得帮助。\033[0m"
		end
	end
end