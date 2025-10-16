.class public Lb/l/a/a$d;
.super Lb/l/a/a$c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/l/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final b:Landroid/view/Choreographer;

.field public final c:Landroid/view/Choreographer$FrameCallback;


# direct methods
.method public constructor <init>(Lb/l/a/a$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lb/l/a/a$c;-><init>(Lb/l/a/a$a;)V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, Lb/l/a/a$d;->b:Landroid/view/Choreographer;

    new-instance p1, Lb/l/a/a$d$a;

    invoke-direct {p1, p0}, Lb/l/a/a$d$a;-><init>(Lb/l/a/a$d;)V

    iput-object p1, p0, Lb/l/a/a$d;->c:Landroid/view/Choreographer$FrameCallback;

    return-void
.end method
