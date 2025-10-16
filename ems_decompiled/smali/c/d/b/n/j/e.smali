.class public final Lc/d/b/n/j/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/b/n/i/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/b/n/j/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/d/b/n/i/a<",
        "Lc/d/b/n/j/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Lc/d/b/n/j/e$a;


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

.field public c:Lc/d/b/n/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/b/n/e<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/d/b/n/j/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/d/b/n/j/e$a;-><init>(Lc/d/b/n/j/d;)V

    sput-object v0, Lc/d/b/n/j/e;->e:Lc/d/b/n/j/e$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc/d/b/n/j/e;->a:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lc/d/b/n/j/e;->b:Ljava/util/Map;

    sget-object v2, Lc/d/b/n/j/a;->a:Lc/d/b/n/j/a;

    iput-object v2, p0, Lc/d/b/n/j/e;->c:Lc/d/b/n/e;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lc/d/b/n/j/e;->d:Z

    const-class v2, Ljava/lang/String;

    sget-object v3, Lc/d/b/n/j/b;->a:Lc/d/b/n/j/b;

    .line 1
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    const-class v2, Ljava/lang/Boolean;

    sget-object v3, Lc/d/b/n/j/c;->a:Lc/d/b/n/j/c;

    .line 3
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-class v2, Ljava/util/Date;

    sget-object v3, Lc/d/b/n/j/e;->e:Lc/d/b/n/j/e$a;

    .line 5
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;Lc/d/b/n/e;)Lc/d/b/n/i/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/b/n/j/e;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lc/d/b/n/j/e;->b:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
