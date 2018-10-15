package ${packageName};

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.View;

import javax.inject.Inject;


public class ${NAME}Activity extends AppCompatActivity implements ${NAME}ViewInput {
    @Inject
    ${NAME}ViewOutput presenter;
    
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        <#if DAGGER> 
        inject();
        </#if>
        presenter.setViewInput(this);
        presenter.onStartView();
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
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