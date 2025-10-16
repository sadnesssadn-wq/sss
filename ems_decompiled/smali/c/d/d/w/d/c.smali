.class public final Lc/d/d/w/d/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Lc/d/d/s/b;

.field public b:Lc/d/d/p;

.field public c:Lc/d/d/p;

.field public d:Lc/d/d/p;

.field public e:Lc/d/d/p;

.field public f:I

.field public g:I

.field public h:I

.field public i:I


# direct methods
.method public constructor <init>(Lc/d/d/s/b;Lc/d/d/p;Lc/d/d/p;Lc/d/d/p;Lc/d/d/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    if-eqz p4, :cond_3

    :cond_0
    if-nez p3, :cond_1

    if-eqz p5, :cond_3

    :cond_1
    if-eqz p2, :cond_2

    if-eqz p3, :cond_3

    :cond_2
    if-eqz p4, :cond_4

    if-eqz p5, :cond_3

    goto :goto_0

    .line 1
    :cond_3
    sget-object p1, Lc/d/d/j;->e:Lc/d/d/j;

    .line 2
    throw p1

    .line 3
    :cond_4
    :goto_0
    iput-object p1, p0, Lc/d/d/w/d/c;->a:Lc/d/d/s/b;

    iput-object p2, p0, Lc/d/d/w/d/c;->b:Lc/d/d/p;

    iput-object p3, p0, Lc/d/d/w/d/c;->c:Lc/d/d/p;

    iput-object p4, p0, Lc/d/d/w/d/c;->d:Lc/d/d/p;

    iput-object p5, p0, Lc/d/d/w/d/c;->e:Lc/d/d/p;

    invoke-virtual {p0}, Lc/d/d/w/d/c;->a()V

    return-void
.end method

.method public constructor <init>(Lc/d/d/w/d/c;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lc/d/d/w/d/c;->a:Lc/d/d/s/b;

    iget-object v1, p1, Lc/d/d/w/d/c;->b:Lc/d/d/p;

    iget-object v2, p1, Lc/d/d/w/d/c;->c:Lc/d/d/p;

    iget-object v3, p1, Lc/d/d/w/d/c;->d:Lc/d/d/p;

    iget-object p1, p1, Lc/d/d/w/d/c;->e:Lc/d/d/p;

    .line 4
    iput-object v0, p0, Lc/d/d/w/d/c;->a:Lc/d/d/s/b;

    iput-object v1, p0, Lc/d/d/w/d/c;->b:Lc/d/d/p;

    iput-object v2, p0, Lc/d/d/w/d/c;->c:Lc/d/d/p;

    iput-object v3, p0, Lc/d/d/w/d/c;->d:Lc/d/d/p;

    iput-object p1, p0, Lc/d/d/w/d/c;->e:Lc/d/d/p;

    invoke-virtual {p0}, Lc/d/d/w/d/c;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lc/d/d/w/d/c;->b:Lc/d/d/p;

    if-nez v0, :cond_0

    new-instance v0, Lc/d/d/p;

    iget-object v1, p0, Lc/d/d/w/d/c;->d:Lc/d/d/p;

    .line 1
    iget v1, v1, Lc/d/d/p;->b:F

    const/4 v2, 0x0

    .line 2
    invoke-direct {v0, v2, v1}, Lc/d/d/p;-><init>(FF)V

    iput-object v0, p0, Lc/d/d/w/d/c;->b:Lc/d/d/p;

    new-instance v0, Lc/d/d/p;

    iget-object v1, p0, Lc/d/d/w/d/c;->e:Lc/d/d/p;

    .line 3
    iget v1, v1, Lc/d/d/p;->b:F

    .line 4
    invoke-direct {v0, v2, v1}, Lc/d/d/p;-><init>(FF)V

    iput-object v0, p0, Lc/d/d/w/d/c;->c:Lc/d/d/p;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lc/d/d/w/d/c;->d:Lc/d/d/p;

    if-nez v1, :cond_1

    new-instance v1, Lc/d/d/p;

    iget-object v2, p0, Lc/d/d/w/d/c;->a:Lc/d/d/s/b;

    .line 5
    iget v2, v2, Lc/d/d/s/b;->c:I

    add-int/lit8 v3, v2, -0x1

    int-to-float v3, v3

    .line 6
    iget v0, v0, Lc/d/d/p;->b:F

    .line 7
    invoke-direct {v1, v3, v0}, Lc/d/d/p;-><init>(FF)V

    iput-object v1, p0, Lc/d/d/w/d/c;->d:Lc/d/d/p;

    new-instance v0, Lc/d/d/p;

    add-int/lit8 v2, v2, -0x1

    int-to-float v1, v2

    iget-object v2, p0, Lc/d/d/w/d/c;->c:Lc/d/d/p;

    .line 8
    iget v2, v2, Lc/d/d/p;->b:F

    .line 9
    invoke-direct {v0, v1, v2}, Lc/d/d/p;-><init>(FF)V

    iput-object v0, p0, Lc/d/d/w/d/c;->e:Lc/d/d/p;

    :cond_1
    :goto_0
    iget-object v0, p0, Lc/d/d/w/d/c;->b:Lc/d/d/p;

    .line 10
    iget v0, v0, Lc/d/d/p;->a:F

    .line 11
    iget-object v1, p0, Lc/d/d/w/d/c;->c:Lc/d/d/p;

    .line 12
    iget v1, v1, Lc/d/d/p;->a:F

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lc/d/d/w/d/c;->f:I

    iget-object v0, p0, Lc/d/d/w/d/c;->d:Lc/d/d/p;

    .line 14
    iget v0, v0, Lc/d/d/p;->a:F

    .line 15
    iget-object v1, p0, Lc/d/d/w/d/c;->e:Lc/d/d/p;

    .line 16
    iget v1, v1, Lc/d/d/p;->a:F

    .line 17
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lc/d/d/w/d/c;->g:I

    iget-object v0, p0, Lc/d/d/w/d/c;->b:Lc/d/d/p;

    .line 18
    iget v0, v0, Lc/d/d/p;->b:F

    .line 19
    iget-object v1, p0, Lc/d/d/w/d/c;->d:Lc/d/d/p;

    .line 20
    iget v1, v1, Lc/d/d/p;->b:F

    .line 21
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lc/d/d/w/d/c;->h:I

    iget-object v0, p0, Lc/d/d/w/d/c;->c:Lc/d/d/p;

    .line 22
    iget v0, v0, Lc/d/d/p;->b:F

    .line 23
    iget-object v1, p0, Lc/d/d/w/d/c;->e:Lc/d/d/p;

    .line 24
    iget v1, v1, Lc/d/d/p;->b:F

    .line 25
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lc/d/d/w/d/c;->i:I

    return-void
.end method
