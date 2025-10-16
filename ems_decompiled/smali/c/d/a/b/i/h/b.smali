.class public final Lc/d/a/b/i/h/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/b/n/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/d/b/n/e<",
        "Lc/d/b/u/d1/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lc/d/a/b/i/h/b;

.field public static final b:Lc/d/b/n/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    sget-object v0, Lc/d/a/b/i/h/l;->c:Lc/d/a/b/i/h/l;

    new-instance v1, Lc/d/a/b/i/h/b;

    invoke-direct {v1}, Lc/d/a/b/i/h/b;-><init>()V

    sput-object v1, Lc/d/a/b/i/h/b;->a:Lc/d/a/b/i/h/b;

    const/4 v1, 0x1

    .line 1
    new-instance v2, Lc/d/a/b/i/h/i;

    invoke-direct {v2, v1, v0}, Lc/d/a/b/i/h/i;-><init>(ILc/d/a/b/i/h/l;)V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Lc/d/b/n/d;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    const-string v2, "messagingClientEvent"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lc/d/b/n/d;-><init>(Ljava/lang/String;Ljava/util/Map;Lc/d/b/n/d$a;)V

    .line 4
    sput-object v1, Lc/d/a/b/i/h/b;->b:Lc/d/b/n/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lc/d/b/u/d1/b;

    check-cast p2, Lc/d/b/n/f;

    sget-object v0, Lc/d/a/b/i/h/b;->b:Lc/d/b/n/d;

    .line 1
    iget-object p1, p1, Lc/d/b/u/d1/b;->a:Lc/d/b/u/d1/a;

    .line 2
    invoke-interface {p2, v0, p1}, Lc/d/b/n/f;->e(Lc/d/b/n/d;Ljava/lang/Object;)Lc/d/b/n/f;

    return-void
.end method
