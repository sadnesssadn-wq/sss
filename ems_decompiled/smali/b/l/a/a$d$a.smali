.class public Lb/l/a/a$d$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/l/a/a$d;-><init>(Lb/l/a/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/l/a/a$d;


# direct methods
.method public constructor <init>(Lb/l/a/a$d;)V
    .locals 0

    iput-object p1, p0, Lb/l/a/a$d$a;->a:Lb/l/a/a$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 0

    iget-object p1, p0, Lb/l/a/a$d$a;->a:Lb/l/a/a$d;

    iget-object p1, p1, Lb/l/a/a$c;->a:Lb/l/a/a$a;

    invoke-virtual {p1}, Lb/l/a/a$a;->a()V

    return-void
.end method
