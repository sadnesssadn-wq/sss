.class public Lc/b/r/a/l0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# instance fields
.field public final synthetic a:Lcom/emsportal/international/activity/DetailInternationalParcelActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/international/activity/DetailInternationalParcelActivity;)V
    .locals 0

    iput-object p1, p0, Lc/b/r/a/l0;->a:Lcom/emsportal/international/activity/DetailInternationalParcelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/t/a;)V
    .locals 3

    const-class v0, Lc/b/r/b/c;

    invoke-virtual {p1, v0}, Lc/b/t/a;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/r/b/c;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lc/b/r/b/c;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lc/b/r/a/l0;->a:Lcom/emsportal/international/activity/DetailInternationalParcelActivity;

    .line 1
    iget-object v2, v2, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->G:Ljava/util/List;

    .line 2
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lc/b/r/a/l0;->a:Lcom/emsportal/international/activity/DetailInternationalParcelActivity;

    .line 3
    iget-object v0, v0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->H:Lc/b/r/b/j;

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyItemRangeChanged(II)V

    invoke-virtual {p1}, Lc/b/r/b/c;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/16 v2, 0x8

    :cond_0
    iget-object p1, p0, Lc/b/r/a/l0;->a:Lcom/emsportal/international/activity/DetailInternationalParcelActivity;

    .line 5
    iget-object p1, p1, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->s:Landroid/widget/TextView;

    .line 6
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lc/b/r/a/l0;->a:Lcom/emsportal/international/activity/DetailInternationalParcelActivity;

    new-instance v1, Lc/b/r/a/l0$a;

    invoke-direct {v1, p0}, Lc/b/r/a/l0$a;-><init>(Lc/b/r/a/l0;)V

    invoke-static {v0, p1, v1}, Lb/u/a;->j0(Landroid/content/Context;Ljava/lang/String;Lc/b/w/m;)V

    return-void
.end method
