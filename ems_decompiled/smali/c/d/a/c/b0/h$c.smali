.class public Lc/d/a/c/b0/h$c;
.super Lc/d/a/c/b0/h$h;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/c/b0/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic e:Lc/d/a/c/b0/h;


# direct methods
.method public constructor <init>(Lc/d/a/c/b0/h;)V
    .locals 1

    iput-object p1, p0, Lc/d/a/c/b0/h$c;->e:Lc/d/a/c/b0/h;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc/d/a/c/b0/h$h;-><init>(Lc/d/a/c/b0/h;Lc/d/a/c/b0/f;)V

    return-void
.end method


# virtual methods
.method public a()F
    .locals 2

    iget-object v0, p0, Lc/d/a/c/b0/h$c;->e:Lc/d/a/c/b0/h;

    iget v1, v0, Lc/d/a/c/b0/h;->h:F

    iget v0, v0, Lc/d/a/c/b0/h;->i:F

    add-float/2addr v1, v0

    return v1
.end method
