package ${packageName};

import javax.inject.Inject;


public class ${NAME}Presenter implements ${NAME}ViewOutput, ${NAME}InteractorOutput {
    private final ${NAME}InteractorInput interactor;
    private ${NAME}ViewInput view;

    @Inject
    public ${NAME}Presenter(${NAME}InteractorInput interactor) {
        this.interactor = interactor;
    }
    
    @Override
    public void setViewInput(${NAME}ViewInput view) {
        this.view = view;
    }

    @Override
    public void onStartView() {

    }

    @Override
    public void onDestroyView() {

    }
}