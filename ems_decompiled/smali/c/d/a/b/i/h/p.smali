.class public final Lc/d/a/b/i/h/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/b/n/i/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/d/b/n/i/a<",
        "Lc/d/a/b/i/h/p;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic d:I


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
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc/d/a/b/i/h/p;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc/d/a/b/i/h/p;->b:Ljava/util/Map;

    sget-object v0, Lc/d/a/b/i/h/o;->a:Lc/d/a/b/i/h/o;

    iput-object v0, p0, Lc/d/a/b/i/h/p;->c:Lc/d/b/n/e;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Class;Lc/d/b/n/e;)Lc/d/b/n/i/a;
    .locals 1

    iget-object v0, p0, Lc/d/a/b/i/h/p;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lc/d/a/b/i/h/p;->b:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
