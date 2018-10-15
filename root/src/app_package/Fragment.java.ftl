package ${packageName};

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.view.View;

import javax.inject.Inject;


public class ${NAME}Fragment extends Fragment implements ${NAME}ViewInput {
    @Inject
    ${NAME}ViewOutput presenter;
    
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        <#if DAGGER>inject();</#if>
    }
    
    @Override
    public void onViewCreated(View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        presenter.setViewInput(this);
        presenter.onStartView();
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        presenter.setViewInput(null);
        presenter.onDestroyView();
    }
     <#if DAGGER> 
    private void inject() {
        Dagger${NAME}Component
            .builder()
            .build()
            .inject(this);
    }
      </#if>
}