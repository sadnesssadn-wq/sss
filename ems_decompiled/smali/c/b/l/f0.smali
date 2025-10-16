.class public Lc/b/l/f0;
.super Lb/m/d/l;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/emsportal/base/BaseAdapter$IOnClickItemListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/l/f0$a;
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
            "Lc/b/r/c/n;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lc/b/r/b/r;

.field public h:Lc/b/l/f0$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/m/d/l;-><init>()V

    return-void
.end method


# virtual methods
.method public k(I)V
    .locals 10

    iget-object v0, p0, Lc/b/l/f0;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/r/c/n;

    iget-object v0, p0, Lc/b/l/f0;->h:Lc/b/l/f0$a;

    if-eqz v0, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/emsportal/international/activity/ListInternationalParcelActivity;

    .line 1
    invoke-virtual {v1}, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->x()V

    invoke-virtual {v1}, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->v()V

    invoke-virtual {p1}, Lc/b/r/c/n;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->p:Ljava/lang/String;

    .line 2
    iget-object v0, p1, Lc/b/r/c/n;->e:Ljava/lang/String;

    .line 3
    iget-object p1, p1, Lc/b/r/c/n;->d:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v0, p1}, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->A(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->p:Ljava/lang/String;

    iget-object v3, v1, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->n:Ljava/lang/String;

    iget-object v4, v1, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->o:Ljava/lang/String;

    iget-object v5, v1, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->q:Ljava/lang/String;

    iget-object v6, v1, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->r:Ljava/lang/String;

    iget-object v7, v1, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->s:Ljava/lang/String;

    iget-object v8, v1, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->t:Ljava/lang/String;

    const/4 v9, 0x1

    invoke-virtual/range {v1 .. v9}, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lb/m/d/l;->dismiss()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lc/b/l/f0;->e:Landroid/widget/ImageView;

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

    iput-object p1, p0, Lc/b/l/f0;->c:Landroid/view/View;

    const p2, 0x7f08021d

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lc/b/l/f0;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p0, Lc/b/l/f0;->c:Landroid/view/View;

    const p2, 0x7f080157

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lc/b/l/f0;->e:Landroid/widget/ImageView;

    .line 2
    iget-object p1, p0, Lc/b/l/f0;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p3

    invoke-direct {p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object p2, p0, Lc/b/l/f0;->g:Lc/b/r/b/r;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    .line 4
    iget-object p1, p0, Lc/b/l/f0;->e:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lc/b/l/f0;->g:Lc/b/r/b/r;

    .line 5
    iput-object p0, p1, Lcom/emsportal/base/BaseAdapter;->onClickItemListener:Lcom/emsportal/base/BaseAdapter$IOnClickItemListener;

    .line 6
    iget-object p1, p0, Lc/b/l/f0;->c:Landroid/view/View;

    return-object p1
.end method
