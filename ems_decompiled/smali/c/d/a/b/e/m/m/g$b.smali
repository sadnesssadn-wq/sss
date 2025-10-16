.class public final Lc/d/a/b/e/m/m/g$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/b/e/m/m/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Lc/d/a/b/e/m/m/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/e/m/m/b<",
            "*>;"
        }
    .end annotation
.end field

.field public final b:Lc/d/a/b/e/c;


# direct methods
.method public constructor <init>(Lc/d/a/b/e/m/m/b;Lc/d/a/b/e/c;Lc/d/a/b/e/m/m/t0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/a/b/e/m/m/g$b;->a:Lc/d/a/b/e/m/m/b;

    iput-object p2, p0, Lc/d/a/b/e/m/m/g$b;->b:Lc/d/a/b/e/c;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, Lc/d/a/b/e/m/m/g$b;

    if-eqz v1, :cond_0

    check-cast p1, Lc/d/a/b/e/m/m/g$b;

    iget-object v1, p0, Lc/d/a/b/e/m/m/g$b;->a:Lc/d/a/b/e/m/m/b;

    iget-object v2, p1, Lc/d/a/b/e/m/m/g$b;->a:Lc/d/a/b/e/m/m/b;

    invoke-static {v1, v2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->M(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc/d/a/b/e/m/m/g$b;->b:Lc/d/a/b/e/c;

    iget-object p1, p1, Lc/d/a/b/e/m/m/g$b;->b:Lc/d/a/b/e/c;

    invoke-static {v1, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->M(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lc/d/a/b/e/m/m/g$b;->a:Lc/d/a/b/e/m/m/b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lc/d/a/b/e/m/m/g$b;->b:Lc/d/a/b/e/c;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 1
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lc/d/a/b/e/p/n;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc/d/a/b/e/p/n;-><init>(Ljava/lang/Object;Lc/d/a/b/e/p/h1;)V

    .line 2
    iget-object v1, p0, Lc/d/a/b/e/m/m/g$b;->a:Lc/d/a/b/e/m/m/b;

    const-string v2, "key"

    invoke-virtual {v0, v2, v1}, Lc/d/a/b/e/p/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lc/d/a/b/e/p/n;

    iget-object v1, p0, Lc/d/a/b/e/m/m/g$b;->b:Lc/d/a/b/e/c;

    const-string v2, "feature"

    invoke-virtual {v0, v2, v1}, Lc/d/a/b/e/p/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lc/d/a/b/e/p/n;

    invoke-virtual {v0}, Lc/d/a/b/e/p/n;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
