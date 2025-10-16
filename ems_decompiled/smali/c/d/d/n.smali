.class public final Lc/d/d/n;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:[B

.field public c:[Lc/d/d/p;

.field public final d:Lc/d/d/a;

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lc/d/d/o;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;[BI[Lc/d/d/p;Lc/d/d/a;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/d/n;->a:Ljava/lang/String;

    iput-object p2, p0, Lc/d/d/n;->b:[B

    iput-object p4, p0, Lc/d/d/n;->c:[Lc/d/d/p;

    iput-object p5, p0, Lc/d/d/n;->d:Lc/d/d/a;

    const/4 p1, 0x0

    iput-object p1, p0, Lc/d/d/n;->e:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B[Lc/d/d/p;Lc/d/d/a;)V
    .locals 0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/d/n;->a:Ljava/lang/String;

    iput-object p2, p0, Lc/d/d/n;->b:[B

    iput-object p3, p0, Lc/d/d/n;->c:[Lc/d/d/p;

    iput-object p4, p0, Lc/d/d/n;->d:Lc/d/d/a;

    const/4 p1, 0x0

    iput-object p1, p0, Lc/d/d/n;->e:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lc/d/d/o;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, Lc/d/d/n;->e:Ljava/util/Map;

    if-nez v0, :cond_0

    iput-object p1, p0, Lc/d/d/n;->e:Ljava/util/Map;

    return-void

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public b(Lc/d/d/o;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lc/d/d/n;->e:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lc/d/d/o;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lc/d/d/n;->e:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lc/d/d/n;->e:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/d/d/n;->a:Ljava/lang/String;

    return-object v0
.end method
