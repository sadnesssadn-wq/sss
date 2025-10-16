.class public Lb/g/c/a/b$b;
.super Lb/g/c/a/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/g/c/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public g:[F

.field public h:Lb/g/d/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lb/g/c/a/b;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [F

    iput-object v0, p0, Lb/g/c/a/b$b;->g:[F

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lb/g/d/a;

    iput-object p1, p0, Lb/g/c/a/b$b;->h:Lb/g/d/a;

    return-void
.end method

.method public e(Landroid/view/View;F)V
    .locals 2

    iget-object v0, p0, Lb/g/c/a/b$b;->g:[F

    invoke-virtual {p0, p2}, Lb/g/a/h/a/e;->a(F)F

    move-result p2

    const/4 v1, 0x0

    aput p2, v0, v1

    iget-object p2, p0, Lb/g/c/a/b$b;->h:Lb/g/d/a;

    iget-object v0, p0, Lb/g/c/a/b$b;->g:[F

    invoke-virtual {p2, p1, v0}, Lb/g/d/a;->h(Landroid/view/View;[F)V

    return-void
.end method
