package com.emsportal.user.activity;

import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import c.b.t.b;
import c.b.v.a.v;
import com.emsportal.R;
import com.emsportal.base.BaseNavigationActivity;
import com.google.android.material.button.MaterialButton;
import java.util.HashMap;

/* loaded from: classes.dex */
public class RegisterActivity extends BaseNavigationActivity {

    /* renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ int f7797f = 0;

    /* renamed from: c, reason: collision with root package name */
    public EditText f7798c;

    /* renamed from: d, reason: collision with root package name */
    public MaterialButton f7799d;

    /* renamed from: e, reason: collision with root package name */
    public ViewGroup f7800e;

    /* loaded from: classes.dex */
    public class a implements TextView.OnEditorActionListener {
        public a() {
        }

        @Override // android.widget.TextView.OnEditorActionListener
        public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
            if (i != 4) {
                return false;
            }
            RegisterActivity registerActivity = RegisterActivity.this;
            int i2 = RegisterActivity.f7797f;
            registerActivity.v();
            return true;
        }
    }

    @Override // com.emsportal.base.BaseNavigationActivity
    public int o() {
        return R.layout.activity_register;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view == this.f7799d) {
            v();
        }
    }

    @Override // com.emsportal.base.BaseNavigationActivity
    public boolean p() {
        return true;
    }

    @Override // com.emsportal.base.BaseNavigationActivity
    public void q() {
        b.u.a.c(this, this.f7800e);
        this.f7799d.setOnClickListener(this);
        s(R.string.title_register);
        this.f7798c.setOnEditorActionListener(new a());
    }

    @Override // com.emsportal.base.BaseNavigationActivity
    public void r() {
        this.f7800e = (ViewGroup) findViewById(R.id.root);
        this.f7798c = (EditText) findViewById(R.id.edt_phone);
        this.f7799d = (MaterialButton) findViewById(R.id.btn_register);
    }

    public final void v() {
        boolean z;
        if (!b.u.a.M()) {
            Toast.makeText(this, getString(R.string.msg_connection_network_error), 1).show();
            return;
        }
        String K = c.a.a.a.a.K(this.f7798c);
        if (b.u.a.L(K)) {
            Toast.makeText(this, getString(R.string.msg_phone_or_email_required), 1).show();
            z = false;
        } else {
            z = true;
        }
        if (z) {
            v vVar = new v(this, K);
            int i = c.b.s.a.f3622d;
            HashMap hashMap = new HashMap();
            hashMap.put("account", K);
            b.d("http://ws.ems.com.vn/rc/send-confirmation-code", hashMap, true, vVar);
        }
    }
}
