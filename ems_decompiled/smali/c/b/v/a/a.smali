.class public final synthetic Lc/b/v/a/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic c:Lcom/emsportal/user/activity/ListStoresActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/emsportal/user/activity/ListStoresActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/b/v/a/a;->c:Lcom/emsportal/user/activity/ListStoresActivity;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    iget-object p1, p0, Lc/b/v/a/a;->c:Lcom/emsportal/user/activity/ListStoresActivity;

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p3, 0x0

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-ne p2, v0, :cond_1

    .line 2
    iget-object p2, p1, Lcom/emsportal/user/activity/ListStoresActivity;->d:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f1002aa

    invoke-static {p1, p2}, Lb/u/a;->n0(Landroid/content/Context;I)V

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    iput-object p2, p1, Lcom/emsportal/user/activity/ListStoresActivity;->m:Ljava/lang/String;

    iput v1, p1, Lcom/emsportal/user/activity/ListStoresActivity;->l:I

    iget-object p2, p1, Lcom/emsportal/user/activity/ListStoresActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    iget-object p2, p1, Lcom/emsportal/user/activity/ListStoresActivity;->h:Lc/b/v/b/b;

    invoke-virtual {p2, p3, p3}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyItemRangeInserted(II)V

    iget p2, p1, Lcom/emsportal/user/activity/ListStoresActivity;->l:I

    iget-object v0, p1, Lcom/emsportal/user/activity/ListStoresActivity;->m:Ljava/lang/String;

    invoke-virtual {p1, p2, v0, v1}, Lcom/emsportal/user/activity/ListStoresActivity;->v(ILjava/lang/String;Z)V

    invoke-static {p1}, Lb/u/a;->J(Landroid/app/Activity;)V

    :cond_1
    :goto_0
    return p3
.end method
