.class public Lc/b/w/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Landroid/widget/EditText;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Lc/b/w/l;

.field public final synthetic f:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;Landroid/content/Context;Lc/b/w/l;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lc/b/w/e;->c:Landroid/widget/EditText;

    iput-object p2, p0, Lc/b/w/e;->d:Landroid/content/Context;

    iput-object p3, p0, Lc/b/w/e;->e:Lc/b/w/l;

    iput-object p4, p0, Lc/b/w/e;->f:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lc/b/w/e;->c:Landroid/widget/EditText;

    invoke-static {p1}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lc/b/w/e;->d:Landroid/content/Context;

    const v0, 0x7f10024e

    invoke-static {p1, v0}, Lb/u/a;->n0(Landroid/content/Context;I)V

    iget-object p1, p0, Lc/b/w/e;->c:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return-void

    :cond_0
    iget-object v0, p0, Lc/b/w/e;->e:Lc/b/w/l;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lc/b/w/l;->a(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lc/b/w/e;->f:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
