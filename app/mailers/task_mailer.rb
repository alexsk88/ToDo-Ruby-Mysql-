class TaskMailer < ApplicationMailer
    def new_report(id_user, state)
      @tasks = Task.where("user_id = ? AND state = ?",id_user,state)
      user = User.find(id_user)
      mail(to: user.email, subject: 'Tu reporte de tareas')
    end
end
