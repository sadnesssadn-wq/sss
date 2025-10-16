.class public abstract Lcom/emsportal/base/BaseFragment;
.super Landroidx/fragment/app/Fragment;
.source ""


# instance fields
.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public d(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/emsportal/base/BaseFragment;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public abstract e()I
.end method

.method public abstract f()V
.end method

.method public abstract j()V
.end method

.method public abstract l(Landroid/view/View;)V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/emsportal/base/BaseFragment;->f()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/emsportal/base/BaseFragment;->e()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/emsportal/base/BaseFragment;->view:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/emsportal/base/BaseFragment;->l(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/emsportal/base/BaseFragment;->j()V

    iget-object p1, p0, Lcom/emsportal/base/BaseFragment;->view:Landroid/view/View;

    return-object p1
.end method
