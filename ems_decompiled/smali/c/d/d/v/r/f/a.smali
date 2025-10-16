.class public final Lc/d/d/v/r/f/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lc/d/d/v/r/b;

.field public final b:Lc/d/d/v/r/b;

.field public final c:Lc/d/d/v/r/c;


# direct methods
.method public constructor <init>(Lc/d/d/v/r/b;Lc/d/d/v/r/b;Lc/d/d/v/r/c;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/d/v/r/f/a;->a:Lc/d/d/v/r/b;

    iput-object p2, p0, Lc/d/d/v/r/f/a;->b:Lc/d/d/v/r/b;

    iput-object p3, p0, Lc/d/d/v/r/f/a;->c:Lc/d/d/v/r/c;

    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static b(Ljava/lang/Object;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lc/d/d/v/r/f/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lc/d/d/v/r/f/a;

    iget-object v0, p0, Lc/d/d/v/r/f/a;->a:Lc/d/d/v/r/b;

    iget-object v2, p1, Lc/d/d/v/r/f/a;->a:Lc/d/d/v/r/b;

    invoke-static {v0, v2}, Lc/d/d/v/r/f/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/d/d/v/r/f/a;->b:Lc/d/d/v/r/b;

    iget-object v2, p1, Lc/d/d/v/r/f/a;->b:Lc/d/d/v/r/b;

    invoke-static {v0, v2}, Lc/d/d/v/r/f/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/d/d/v/r/f/a;->c:Lc/d/d/v/r/c;

    iget-object p1, p1, Lc/d/d/v/r/f/a;->c:Lc/d/d/v/r/c;

    invoke-static {v0, p1}, Lc/d/d/v/r/f/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lc/d/d/v/r/f/a;->a:Lc/d/d/v/r/b;

    invoke-static {v0}, Lc/d/d/v/r/f/a;->b(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lc/d/d/v/r/f/a;->b:Lc/d/d/v/r/b;

    invoke-static {v1}, Lc/d/d/v/r/f/a;->b(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lc/d/d/v/r/f/a;->c:Lc/d/d/v/r/c;

    invoke-static {v1}, Lc/d/d/v/r/f/a;->b(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lc/d/d/v/r/f/a;->a:Lc/d/d/v/r/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/d/d/v/r/f/a;->b:Lc/d/d/v/r/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/d/d/v/r/f/a;->c:Lc/d/d/v/r/c;

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    .line 1
    :cond_0
    iget v1, v1, Lc/d/d/v/r/c;->a:I

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
