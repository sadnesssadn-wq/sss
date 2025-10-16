.class public final synthetic Lc/d/b/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/b/r/b;


# instance fields
.field public final synthetic a:Lc/d/b/g;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lc/d/b/g;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/b/a;->a:Lc/d/b/g;

    iput-object p2, p0, Lc/d/b/a;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lc/d/b/a;->a:Lc/d/b/g;

    iget-object v1, p0, Lc/d/b/a;->b:Landroid/content/Context;

    .line 1
    new-instance v2, Lc/d/b/t/a;

    invoke-virtual {v0}, Lc/d/b/g;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Lc/d/b/g;->d:Lc/d/b/k/q;

    const-class v4, Lc/d/b/o/c;

    invoke-virtual {v0, v4}, Lc/d/b/k/l;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/b/o/c;

    invoke-direct {v2, v1, v3, v0}, Lc/d/b/t/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lc/d/b/o/c;)V

    return-object v2
.end method
