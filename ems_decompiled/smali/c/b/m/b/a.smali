.class public Lc/b/m/b/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# instance fields
.field public final synthetic a:Lc/b/m/b/b;


# direct methods
.method public constructor <init>(Lc/b/m/b/b;)V
    .locals 0

    iput-object p1, p0, Lc/b/m/b/a;->a:Lc/b/m/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/t/a;)V
    .locals 2

    const-class v0, Lc/b/m/d/x;

    invoke-virtual {p1, v0}, Lc/b/t/a;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lc/b/m/b/a;->a:Lc/b/m/b/b;

    .line 1
    iput-object p1, v0, Lc/b/m/b/b;->c:Ljava/util/List;

    .line 2
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lc/b/m/b/a;->a:Lc/b/m/b/b;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lc/b/m/b/a;->a:Lc/b/m/b/b;

    .line 3
    iget-object v1, v1, Lc/b/m/b/b;->c:Ljava/util/List;

    .line 4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5
    iput-object v0, p1, Lc/b/m/b/b;->f:Ljava/util/List;

    .line 6
    :cond_0
    iget-object p1, p0, Lc/b/m/b/a;->a:Lc/b/m/b/b;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lc/b/m/b/a;->a:Lc/b/m/b/b;

    .line 1
    iget-object v0, v0, Lc/b/m/b/b;->d:Landroid/content/Context;

    .line 2
    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
