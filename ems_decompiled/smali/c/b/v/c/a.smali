.class public Lc/b/v/c/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private account:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private fullName:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/c;
        value = "fullname"
    .end annotation
.end field

.field private gender:I

.field private grab:I

.field private isOnline:Z

.field private merchantCode:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/c;
        value = "merchant_code"
    .end annotation
.end field

.field private phone:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private userName:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/c;
        value = "username"
    .end annotation
.end field


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/v/c/a;->account:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lc/b/v/c/a;->g()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lc/b/v/c/a;->account:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    sget-object v1, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lc/b/v/c/a;->account:Ljava/lang/String;

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0

    :cond_2
    iget-object v0, p0, Lc/b/v/c/a;->email:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/v/c/a;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/v/c/a;->merchantCode:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lc/b/v/c/a;->g()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lc/b/v/c/a;->account:Ljava/lang/String;

    invoke-static {v0}, Lb/u/a;->O(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/b/v/c/a;->account:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0

    :cond_1
    iget-object v0, p0, Lc/b/v/c/a;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/v/c/a;->token:Ljava/lang/String;

    return-object v0
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lc/b/v/c/a;->account:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h()Z
    .locals 2

    iget v0, p0, Lc/b/v/c/a;->grab:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lc/b/v/c/a;->isOnline:Z

    return v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc/b/v/c/a;->fullName:Ljava/lang/String;

    return-void
.end method

.method public k(Z)V
    .locals 0

    iput-boolean p1, p0, Lc/b/v/c/a;->isOnline:Z

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc/b/v/c/a;->phone:Ljava/lang/String;

    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc/b/v/c/a;->token:Ljava/lang/String;

    return-void
.end method
