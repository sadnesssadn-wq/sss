.class public Lb/g/c/b/q$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/g/c/b/q;->f()Landroid/view/animation/Interpolator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/g/a/h/a/c;


# direct methods
.method public constructor <init>(Lb/g/c/b/q;Lb/g/a/h/a/c;)V
    .locals 0

    iput-object p2, p0, Lb/g/c/b/q$a;->a:Lb/g/a/h/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3

    iget-object v0, p0, Lb/g/c/b/q$a;->a:Lb/g/a/h/a/c;

    float-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lb/g/a/h/a/c;->a(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method
