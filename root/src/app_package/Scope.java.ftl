package ${packageName};

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import javax.inject.Scope;

@Scope
@Retention(RetentionPolicy.RUNTIME)
public @interface ${NAME}Scope {
   	@${NAME}Scope
    @Component(dependencies = ProjectComponent.class, modules = {${NAME}Module.class})
    public interface ${NAME}omponent {
        void inject(${NAME}Fragment fragment);
        void inject(${NAME}Activity fragment);
    }
}
