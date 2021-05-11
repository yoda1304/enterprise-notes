class Badge < ApplicationRecord

    belongs_to :user

    def login_increment

        self.login_progress += 1
        if self.login_progress >= self.login_max_xp
            self.login_badge = true
            self.login_level += 1
            self.login_progress = 0
        end
        self.save!

    end

    def posts_increment

        self.posts_progress += 1
        if self.posts_progress >= self.posts_max_xp
            self.posts_badge = true
            self.posts_level += 1
            self.posts_progress = 0
        end
        self.save!

    end

    def courses_increment

        self.courses_progress += 1
        if self.courses_progress >= self.courses_max_xp
            self.courses_badge = true
            self.courses_level += 1
            self.courses_progress = 0
        end
        self.save!

    end

end
