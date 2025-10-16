.class public Lc/b/m/c/a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/appcompat/widget/Toolbar$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/m/c/a;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/b/m/c/a;


# direct methods
.method public constructor <init>(Lc/b/m/c/a;)V
    .locals 0

    iput-object p1, p0, Lc/b/m/c/a$b;->a:Lc/b/m/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x0

    const v1, 0x7f08004a

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lc/b/m/c/a$b;->a:Lc/b/m/c/a;

    .line 1
    iget-object v1, p1, Lc/b/m/c/a;->m:Lc/b/l/s;

    .line 2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lb/m/d/y;

    move-result-object p1

    .line 3
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lb/m/d/l;->show(Lb/m/d/y;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lb/m/d/l;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    iget-boolean v2, v1, Lc/b/l/s;->M:Z

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :goto_0
    iput-boolean v0, v1, Lc/b/l/s;->M:Z

    :cond_2
    :goto_1
    return v0
.end method
