.class public Lc/d/a/b/a/a/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/e/m/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/b/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/a/b/a/a/a$a$a;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final f:Lc/d/a/b/a/a/a$a;


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/d/a/b/a/a/a$a$a;

    invoke-direct {v0}, Lc/d/a/b/a/a/a$a$a;-><init>()V

    .line 1
    new-instance v1, Lc/d/a/b/a/a/a$a;

    invoke-direct {v1, v0}, Lc/d/a/b/a/a/a$a;-><init>(Lc/d/a/b/a/a/a$a$a;)V

    .line 2
    sput-object v1, Lc/d/a/b/a/a/a$a;->f:Lc/d/a/b/a/a/a$a;

    return-void
.end method

.method public constructor <init>(Lc/d/a/b/a/a/a$a$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lc/d/a/b/a/a/a$a$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lc/d/a/b/a/a/a$a;->c:Ljava/lang/String;

    iget-object v0, p1, Lc/d/a/b/a/a/a$a$a;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lc/d/a/b/a/a/a$a;->d:Z

    iget-object p1, p1, Lc/d/a/b/a/a/a$a$a;->c:Ljava/lang/String;

    iput-object p1, p0, Lc/d/a/b/a/a/a$a;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lc/d/a/b/a/a/a$a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lc/d/a/b/a/a/a$a;

    iget-object v1, p0, Lc/d/a/b/a/a/a$a;->c:Ljava/lang/String;

    iget-object v3, p1, Lc/d/a/b/a/a/a$a;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->M(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lc/d/a/b/a/a/a$a;->d:Z

    iget-boolean v3, p1, Lc/d/a/b/a/a/a$a;->d:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lc/d/a/b/a/a/a$a;->e:Ljava/lang/String;

    iget-object p1, p1, Lc/d/a/b/a/a/a$a;->e:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->M(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lc/d/a/b/a/a/a$a;->c:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lc/d/a/b/a/a/a$a;->d:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lc/d/a/b/a/a/a$a;->e:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 1
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
