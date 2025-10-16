.class public Lcom/emsportal/express/activity/request/DetailRequestActivity;
.super Lcom/emsportal/base/BaseNavigationActivity;
.source ""


# static fields
.field public static final synthetic n:I


# instance fields
.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Lc/b/m/d/t;

.field public h:Landroidx/recyclerview/widget/RecyclerView;

.field public i:Lc/b/m/b/c;

.field public j:Landroid/widget/EditText;

.field public k:Landroid/view/ViewGroup;

.field public l:Landroid/view/ViewGroup;

.field public m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/emsportal/base/BaseNavigationActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public o()I
    .locals 1

    const v0, 0x7f0b0031

    return v0
.end method

.method public onBackPressed()V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/emsportal/express/activity/request/DetailRequestActivity;->c:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    invoke-static {}, Lb/u/a;->M()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/emsportal/express/activity/request/DetailRequestActivity;->g:Lc/b/m/d/t;

    invoke-virtual {p1}, Lc/b/m/d/t;->l()Ljava/lang/String;

    move-result-object v4

    .line 1
    new-instance v5, Lc/b/m/a/c/d;

    invoke-direct {v5, p0}, Lc/b/m/a/c/d;-><init>(Lcom/emsportal/express/activity/request/DetailRequestActivity;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v0, "1"

    invoke-static/range {v0 .. v5}, Lc/b/s/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc/b/t/b$d;)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f100263

    invoke-static {p1, v0}, Lb/u/a;->n0(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/emsportal/express/activity/request/DetailRequestActivity;->k:Landroid/view/ViewGroup;

    if-ne p1, v0, :cond_2

    invoke-static {p0}, Lb/u/a;->J(Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/emsportal/express/activity/request/DetailRequestActivity;->j:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/emsportal/express/activity/request/DetailRequestActivity;->m:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/emsportal/express/activity/request/DetailRequestActivity;->v(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public q()V
    .locals 3

    iget-object v0, p0, Lcom/emsportal/express/activity/request/DetailRequestActivity;->k:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/emsportal/express/activity/request/DetailRequestActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "objrequest"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lc/b/m/d/t;

    iput-object v0, p0, Lcom/emsportal/express/activity/request/DetailRequestActivity;->g:Lc/b/m/d/t;

    const-string v0, "#"

    invoke-static {v0}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/emsportal/express/activity/request/DetailRequestActivity;->g:Lc/b/m/d/t;

    invoke-virtual {v1}, Lc/b/m/d/t;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/emsportal/express/activity/request/DetailRequestActivity;->g:Lc/b/m/d/t;

    invoke-virtual {v1}, Lc/b/m/d/t;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1
    iget-object v1, p0, Lcom/emsportal/base/BaseNavigationActivity;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/emsportal/express/activity/request/DetailRequestActivity;->g:Lc/b/m/d/t;

    .line 3
    iget-object v1, p0, Lcom/emsportal/express/activity/request/DetailRequestActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lc/b/m/d/t;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/emsportal/express/activity/request/DetailRequestActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lc/b/m/d/t;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/emsportal/express/activity/request/DetailRequestActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lc/b/m/d/t;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/emsportal/express/activity/request/DetailRequestActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Lc/b/m/d/t;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lc/b/m/d/t;->f()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Lc/b/m/d/t;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CLOSED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/emsportal/express/activity/request/DetailRequestActivity;->l:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/emsportal/express/activity/request/DetailRequestActivity;->l:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/emsportal/express/activity/request/DetailRequestActivity;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    new-instance v1, Lc/b/m/b/c;

    iget-object v2, p0, Lcom/emsportal/express/activity/request/DetailRequestActivity;->g:Lc/b/m/d/t;

    invoke-virtual {v2}, Lc/b/m/d/t;->f()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Lc/b/m/b/c;-><init>(Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/emsportal/express/activity/request/DetailRequestActivity;->i:Lc/b/m/b/c;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object v1, p0, Lcom/emsportal/express/activity/request/DetailRequestActivity;->i:Lc/b/m/b/c;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    .line 6
    iget-object v0, p0, Lcom/emsportal/express/activity/request/DetailRequestActivity;->j:Landroid/widget/EditText;

    new-instance v1, Lcom/emsportal/express/activity/request/DetailRequestActivity$a;

    invoke-direct {v1, p0}, Lcom/emsportal/express/activity/request/DetailRequestActivity$a;-><init>(Lcom/emsportal/express/activity/request/DetailRequestActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method public r()V
    .locals 1

    const v0, 0x7f080455

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/express/activity/request/DetailRequestActivity;->c:Landroid/widget/TextView;

    const v0, 0x7f08044f

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/express/activity/request/DetailRequestActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f0804c9

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/express/activity/request/DetailRequestActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f0804cf

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/express/activity/request/DetailRequestActivity;->f:Landroid/widget/TextView;

    const v0, 0x7f080215

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/emsportal/express/activity/request/DetailRequestActivity;->h:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0800e1

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/express/activity/request/DetailRequestActivity;->j:Landroid/widget/EditText;

    const v0, 0x7f080085

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/emsportal/express/activity/request/DetailRequestActivity;->k:Landroid/view/ViewGroup;

    const v0, 0x7f08022d

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/emsportal/express/activity/request/DetailRequestActivity;->l:Landroid/view/ViewGroup;

    return-void
.end method

.method public final v(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f10025a

    invoke-static {p1, v0}, Lb/u/a;->n0(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/emsportal/express/activity/request/DetailRequestActivity;->j:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/emsportal/express/activity/request/DetailRequestActivity;->g:Lc/b/m/d/t;

    invoke-virtual {v0}, Lc/b/m/d/t;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/emsportal/express/activity/request/DetailRequestActivity$b;

    invoke-direct {v1, p0, p1}, Lcom/emsportal/express/activity/request/DetailRequestActivity$b;-><init>(Lcom/emsportal/express/activity/request/DetailRequestActivity;Ljava/lang/String;)V

    .line 1
    sget v2, Lc/b/s/a;->d:I

    const-string v2, "ticket_id"

    const-string v3, "note"

    invoke-static {v2, v0, v3, p1}, Lc/a/a/a/a;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "status"

    const-string v2, "0"

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    const-string v2, "http://ws.ems.com.vn/api/v1/tickets/update"

    invoke-static {v2, p1, v0, v1}, Lc/b/t/b;->d(Ljava/lang/String;Ljava/util/HashMap;ZLc/b/t/b$d;)V

    return-void
.end method
