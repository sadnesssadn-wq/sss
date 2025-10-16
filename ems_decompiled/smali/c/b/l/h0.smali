.class public Lc/b/l/h0;
.super Lb/m/d/l;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/emsportal/base/BaseAdapter$IOnClickItemListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/l/h0$a;
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
            "Lc/b/m/e/d/d;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lc/b/m/e/b/c;

.field public h:Lc/b/l/h0$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/m/d/l;-><init>()V

    return-void
.end method


# virtual methods
.method public k(I)V
    .locals 2

    iget-object v0, p0, Lc/b/l/h0;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/m/e/d/d;

    iget-object v0, p0, Lc/b/l/h0;->h:Lc/b/l/h0$a;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/emsportal/express/retail/activity/ListOrderRCActivity;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lc/b/m/e/d/d;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/emsportal/express/retail/activity/ListOrderRCActivity;->g:Ljava/lang/String;

    invoke-virtual {p1}, Lc/b/m/e/d/d;->b()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v1, v0, Lcom/emsportal/express/retail/activity/ListOrderRCActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {v0}, Lcom/emsportal/express/retail/activity/ListOrderRCActivity;->v()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lb/m/d/l;->dismiss()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lc/b/l/h0;->e:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lb/m/d/l;->dismiss()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p3, 0x7f0b00b8

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lc/b/l/h0;->c:Landroid/view/View;

    const p2, 0x7f08021d

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lc/b/l/h0;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p0, Lc/b/l/h0;->c:Landroid/view/View;

    const p2, 0x7f080157

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lc/b/l/h0;->e:Landroid/widget/ImageView;

    .line 2
    iget-object p1, p0, Lc/b/l/h0;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lc/b/l/h0;->f:Ljava/util/List;

    new-instance p3, Lc/b/m/e/d/d;

    const-string v0, "T\u1ea5t c\u1ea3"

    const-string v1, ""

    invoke-direct {p3, v0, v1}, Lc/b/m/e/d/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lc/b/m/e/d/d;

    const-string v1, "Ch\u1edd b\u01b0u c\u1ee5c x\u00e1c nh\u1eadn"

    const-string v2, "created"

    invoke-direct {v0, v1, v2}, Lc/b/m/e/d/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lc/b/m/e/d/d;

    const-string v2, "B\u01b0u c\u1ee5c \u0111\u00e3 x\u00e1c nh\u1eadn"

    const-string v3, "accepted"

    invoke-direct {v1, v2, v3}, Lc/b/m/e/d/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lc/b/m/e/d/d;

    const-string v3, "\u0110\u00e3 hu\u1ef7"

    const-string v4, "canceled"

    invoke-direct {v2, v3, v4}, Lc/b/m/e/d/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lc/b/l/h0;->f:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lc/b/l/h0;->f:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lc/b/l/h0;->f:Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Lc/b/m/e/b/c;

    iget-object p3, p0, Lc/b/l/h0;->f:Ljava/util/List;

    invoke-direct {p2, p3}, Lc/b/m/e/b/c;-><init>(Ljava/util/List;)V

    iput-object p2, p0, Lc/b/l/h0;->g:Lc/b/m/e/b/c;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p3

    invoke-direct {p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object p2, p0, Lc/b/l/h0;->g:Lc/b/m/e/b/c;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    .line 4
    iget-object p1, p0, Lc/b/l/h0;->e:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lc/b/l/h0;->g:Lc/b/m/e/b/c;

    .line 5
    iput-object p0, p1, Lcom/emsportal/base/BaseAdapter;->onClickItemListener:Lcom/emsportal/base/BaseAdapter$IOnClickItemListener;

    .line 6
    iget-object p1, p0, Lc/b/l/h0;->c:Landroid/view/View;

    return-object p1
.end method
