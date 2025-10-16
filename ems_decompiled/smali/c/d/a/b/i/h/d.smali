.class public abstract Lc/d/a/b/i/h/d;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lc/d/a/b/i/h/q;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lc/d/a/b/i/h/p;

    invoke-direct {v0}, Lc/d/a/b/i/h/p;-><init>()V

    .line 1
    const-class v1, Lc/d/a/b/i/h/d;

    sget-object v2, Lc/d/a/b/i/h/c;->a:Lc/d/a/b/i/h/c;

    invoke-virtual {v0, v1, v2}, Lc/d/a/b/i/h/p;->a(Ljava/lang/Class;Lc/d/b/n/e;)Lc/d/b/n/i/a;

    const-class v1, Lc/d/b/u/d1/b;

    sget-object v2, Lc/d/a/b/i/h/b;->a:Lc/d/a/b/i/h/b;

    invoke-virtual {v0, v1, v2}, Lc/d/a/b/i/h/p;->a(Ljava/lang/Class;Lc/d/b/n/e;)Lc/d/b/n/i/a;

    const-class v1, Lc/d/b/u/d1/a;

    sget-object v2, Lc/d/a/b/i/h/a;->a:Lc/d/a/b/i/h/a;

    invoke-virtual {v0, v1, v2}, Lc/d/a/b/i/h/p;->a(Ljava/lang/Class;Lc/d/b/n/e;)Lc/d/b/n/i/a;

    .line 2
    new-instance v1, Lc/d/a/b/i/h/q;

    new-instance v2, Ljava/util/HashMap;

    iget-object v3, v0, Lc/d/a/b/i/h/p;->a:Ljava/util/Map;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v3, Ljava/util/HashMap;

    iget-object v4, v0, Lc/d/a/b/i/h/p;->b:Ljava/util/Map;

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-object v0, v0, Lc/d/a/b/i/h/p;->c:Lc/d/b/n/e;

    invoke-direct {v1, v2, v3, v0}, Lc/d/a/b/i/h/q;-><init>(Ljava/util/Map;Ljava/util/Map;Lc/d/b/n/e;)V

    .line 3
    sput-object v1, Lc/d/a/b/i/h/d;->a:Lc/d/a/b/i/h/q;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lc/d/b/u/d1/b;
.end method
