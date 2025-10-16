.class public Lc/b/r/c/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/c;
        value = "to_phone"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/c;
        value = "to_name"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/c;
        value = "to_address"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/c;
        value = "to_province"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/c;
        value = "zipcode"
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/c;
        value = "to_country"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/r/c/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/r/c/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/r/c/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/r/c/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/r/c/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/r/c/c;->e:Ljava/lang/String;

    return-object v0
.end method
