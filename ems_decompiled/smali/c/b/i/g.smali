.class public Lc/b/i/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# instance fields
.field public final synthetic a:Lc/b/i/h;


# direct methods
.method public constructor <init>(Lc/b/i/h;)V
    .locals 0

    iput-object p1, p0, Lc/b/i/g;->a:Lc/b/i/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/t/a;)V
    .locals 2

    const-class v0, Lcom/emsportal/model/PlaceManual;

    invoke-virtual {p1, v0}, Lc/b/t/a;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lc/b/i/g;->a:Lc/b/i/h;

    .line 1
    iput-object p1, v0, Lc/b/i/h;->c:Ljava/util/List;

    .line 2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lc/b/i/g;->a:Lc/b/i/h;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lc/b/i/g;->a:Lc/b/i/h;

    .line 3
    iget-object v1, v1, Lc/b/i/h;->c:Ljava/util/List;

    .line 4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5
    iput-object v0, p1, Lc/b/i/h;->f:Ljava/util/List;

    .line 6
    :cond_0
    iget-object p1, p0, Lc/b/i/g;->a:Lc/b/i/h;

    .line 7
    iget-object v0, p1, Lc/b/i/h;->e:Ljava/lang/String;

    .line 8
    invoke-static {p1, v0}, Lc/b/i/h;->a(Lc/b/i/h;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 9
    iput-object v0, p1, Lc/b/i/h;->c:Ljava/util/List;

    .line 10
    iget-object p1, p0, Lc/b/i/g;->a:Lc/b/i/h;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lc/b/i/g;->a:Lc/b/i/h;

    .line 1
    iget-object v0, v0, Lc/b/i/h;->d:Landroid/content/Context;

    .line 2
    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
