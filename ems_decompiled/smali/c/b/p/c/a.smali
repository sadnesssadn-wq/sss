.class public Lc/b/p/c/a;
.super Lb/m/d/l;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/emsportal/base/BaseAdapter$IOnClickItemListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/p/c/a$a;
    }
.end annotation


# static fields
.field public static final synthetic i:I


# instance fields
.field public c:Landroid/view/View;

.field public d:Landroidx/recyclerview/widget/RecyclerView;

.field public e:Landroid/widget/ImageView;

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/b/p/e/h;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lc/b/p/b/f;

.field public h:Lc/b/p/c/a$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/m/d/l;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lb/m/d/y;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lb/m/d/l;->show(Lb/m/d/y;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lb/m/d/l;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method public k(I)V
    .locals 2

    iget-object v0, p0, Lc/b/p/c/a;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/p/e/h;

    iget-object v0, p0, Lc/b/p/c/a;->h:Lc/b/p/c/a$a;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/emsportal/grab/activity/ListGrabParcelActivity;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lc/b/p/e/h;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/emsportal/grab/activity/ListGrabParcelActivity;->i:Ljava/lang/String;

    invoke-virtual {p1}, Lc/b/p/e/h;->b()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v1, v0, Lcom/emsportal/grab/activity/ListGrabParcelActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {v0}, Lcom/emsportal/grab/activity/ListGrabParcelActivity;->v()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lb/m/d/l;->dismiss()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lc/b/p/c/a;->e:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lb/m/d/l;->dismiss()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p3, 0x7f0b00b8

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lc/b/p/c/a;->c:Landroid/view/View;

    const p2, 0x7f08021d

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lc/b/p/c/a;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p0, Lc/b/p/c/a;->c:Landroid/view/View;

    const p2, 0x7f080157

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lc/b/p/c/a;->e:Landroid/widget/ImageView;

    .line 2
    iget-object p1, p0, Lc/b/p/c/a;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p3

    invoke-direct {p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object p2, p0, Lc/b/p/c/a;->g:Lc/b/p/b/f;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    .line 4
    iget-object p1, p0, Lc/b/p/c/a;->e:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lc/b/p/c/a;->g:Lc/b/p/b/f;

    .line 5
    iput-object p0, p1, Lcom/emsportal/base/BaseAdapter;->onClickItemListener:Lcom/emsportal/base/BaseAdapter$IOnClickItemListener;

    .line 6
    iget-object p1, p0, Lc/b/p/c/a;->c:Landroid/view/View;

    return-object p1
.end method
