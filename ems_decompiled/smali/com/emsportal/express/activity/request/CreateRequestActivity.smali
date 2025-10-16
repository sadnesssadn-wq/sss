.class public Lcom/emsportal/express/activity/request/CreateRequestActivity;
.super Lcom/emsportal/base/BaseNavigationActivity;
.source ""


# instance fields
.field public c:Landroid/widget/Spinner;

.field public d:Landroid/widget/EditText;

.field public e:Landroid/widget/EditText;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/ImageView;

.field public h:Ljava/lang/String;

.field public i:Lc/b/m/b/r;

.field public j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc/b/m/d/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/emsportal/base/BaseNavigationActivity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/emsportal/express/activity/request/CreateRequestActivity;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public o()I
    .locals 1

    const v0, 0x7f0b0029

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lb/m/d/m;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x7b

    if-ne p1, v0, :cond_0

    const/16 p1, 0x144

    if-ne p2, p1, :cond_0

    const-string p1, "inventory"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/emsportal/express/activity/request/CreateRequestActivity;->d:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/emsportal/express/activity/request/CreateRequestActivity;->e:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/emsportal/express/activity/request/CreateRequestActivity;->f:Landroid/widget/TextView;

    if-ne p1, v0, :cond_4

    .line 1
    iget-object p1, p0, Lcom/emsportal/express/activity/request/CreateRequestActivity;->h:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const p1, 0x7f100252

    .line 2
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/emsportal/express/activity/request/CreateRequestActivity;->d:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/emsportal/express/activity/request/CreateRequestActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f100256

    .line 4
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 5
    iget-object p1, p0, Lcom/emsportal/express/activity/request/CreateRequestActivity;->d:Landroid/widget/EditText;

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f10029c

    .line 6
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 7
    iget-object p1, p0, Lcom/emsportal/express/activity/request/CreateRequestActivity;->e:Landroid/widget/EditText;

    :goto_0
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    :goto_1
    const/4 v0, 0x0

    :cond_2
    if-eqz v0, :cond_5

    .line 8
    invoke-static {}, Lb/u/a;->M()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/emsportal/express/activity/request/CreateRequestActivity;->d:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/emsportal/express/activity/request/CreateRequestActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/emsportal/express/activity/request/CreateRequestActivity;->h:Ljava/lang/String;

    .line 9
    new-instance v3, Lc/b/m/a/c/c;

    invoke-direct {v3, p0}, Lc/b/m/a/c/c;-><init>(Lcom/emsportal/express/activity/request/CreateRequestActivity;)V

    .line 10
    sget v4, Lc/b/s/a;->d:I

    const-string v4, "tracking_code"

    const-string v5, "case_id"

    invoke-static {v4, p1, v5, v2}, Lc/a/a/a/a;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    const-string v2, "note"

    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "http://ws.ems.com.vn/api/v1/tickets/create"

    invoke-static {v0, p1, v1, v3}, Lc/b/t/b;->d(Ljava/lang/String;Ljava/util/HashMap;ZLc/b/t/b$d;)V

    goto :goto_2

    .line 11
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f100263

    invoke-static {p1, v0}, Lb/u/a;->n0(Landroid/content/Context;I)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/emsportal/express/activity/request/CreateRequestActivity;->g:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_5

    .line 12
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/emsportal/activity/ScannerActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "KEY_CREATE_REQUEST"

    invoke-virtual {p1, v0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x7b

    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_5
    :goto_2
    return-void
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public q()V
    .locals 5

    const v0, 0x7f100390

    invoke-virtual {p0, v0}, Lcom/emsportal/base/BaseNavigationActivity;->s(I)V

    iget-object v0, p0, Lcom/emsportal/express/activity/request/CreateRequestActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/emsportal/express/activity/request/CreateRequestActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/emsportal/express/activity/request/CreateRequestActivity;->c:Landroid/widget/Spinner;

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/emsportal/express/activity/request/CreateRequestActivity;->j:Ljava/util/ArrayList;

    new-instance v2, Lc/b/m/d/h;

    const-string v3, "1010"

    const-string v4, "Ch\u1ecdn ti\u00eau \u0111\u1ec1 y\u00eau c\u1ea7u"

    invoke-direct {v2, v3, v4}, Lc/b/m/d/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc/b/m/b/r;

    iget-object v2, p0, Lcom/emsportal/express/activity/request/CreateRequestActivity;->j:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Lc/b/m/b/r;-><init>(Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/emsportal/express/activity/request/CreateRequestActivity;->i:Lc/b/m/b/r;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    new-instance v1, Lc/b/m/a/c/a;

    invoke-direct {v1, p0}, Lc/b/m/a/c/a;-><init>(Lcom/emsportal/express/activity/request/CreateRequestActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 2
    new-instance v0, Lc/b/m/a/c/b;

    invoke-direct {v0, p0}, Lc/b/m/a/c/b;-><init>(Lcom/emsportal/express/activity/request/CreateRequestActivity;)V

    .line 3
    sget v1, Lc/b/s/a;->d:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    const-string v3, "http://ws.ems.com.vn/api/v1/tickets/case"

    invoke-static {v3, v1, v2, v0}, Lc/b/t/b;->a(Ljava/lang/String;Ljava/util/HashMap;ZLc/b/t/b$d;)V

    return-void
.end method

.method public r()V
    .locals 1

    const v0, 0x7f0803e0

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/emsportal/express/activity/request/CreateRequestActivity;->c:Landroid/widget/Spinner;

    const v0, 0x7f0800e0

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/express/activity/request/CreateRequestActivity;->d:Landroid/widget/EditText;

    const v0, 0x7f0800ff

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/express/activity/request/CreateRequestActivity;->e:Landroid/widget/EditText;

    const v0, 0x7f0804c7

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/express/activity/request/CreateRequestActivity;->f:Landroid/widget/TextView;

    const v0, 0x7f080160

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/emsportal/express/activity/request/CreateRequestActivity;->g:Landroid/widget/ImageView;

    return-void
.end method
