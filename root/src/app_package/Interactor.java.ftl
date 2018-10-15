package ${packageName};

import javax.inject.Inject;


public class ${NAME}Interactor implements ${NAME}InteractorInput {
    private ${NAME}InteractorOutput presenter;

    @Inject
    public ${NAME}Interactor() {
    }
    
    public void setInteractorOutput(${NAME}InteractorOutput presenter) {
        this.presenter = presenter;
    }
}