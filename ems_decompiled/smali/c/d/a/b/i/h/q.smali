.class public final Lc/d/a/b/i/h/q;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lc/d/b/n/e<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lc/d/b/n/g<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final c:Lc/d/b/n/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/b/n/e<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;Lc/d/b/n/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lc/d/b/n/e<",
            "*>;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lc/d/b/n/g<",
            "*>;>;",
            "Lc/d/b/n/e<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/a/b/i/h/q;->a:Ljava/util/Map;

    iput-object p2, p0, Lc/d/a/b/i/h/q;->b:Ljava/util/Map;

    iput-object p3, p0, Lc/d/a/b/i/h/q;->c:Lc/d/b/n/e;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/io/OutputStream;)V
    .locals 4

    new-instance v0, Lc/d/a/b/i/h/n;

    iget-object v1, p0, Lc/d/a/b/i/h/q;->a:Ljava/util/Map;

    iget-object v2, p0, Lc/d/a/b/i/h/q;->b:Ljava/util/Map;

    iget-object v3, p0, Lc/d/a/b/i/h/q;->c:Lc/d/b/n/e;

    invoke-direct {v0, p2, v1, v2, v3}, Lc/d/a/b/i/h/n;-><init>(Ljava/io/OutputStream;Ljava/util/Map;Ljava/util/Map;Lc/d/b/n/e;)V

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lc/d/b/n/e;

    if-eqz p2, :cond_1

    invoke-interface {p2, p1, v0}, Lc/d/b/n/b;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    new-instance p2, Lc/d/b/n/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    const-string v0, "No encoder for "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lc/d/b/n/c;-><init>(Ljava/lang/String;)V

    throw p2
.end method
