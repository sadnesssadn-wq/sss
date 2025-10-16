.class public Lb/o/r$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/o/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lb/o/r;


# direct methods
.method public constructor <init>(Lb/o/r;)V
    .locals 0

    iput-object p1, p0, Lb/o/r$a;->c:Lb/o/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lb/o/r$a;->c:Lb/o/r;

    .line 1
    iget v1, v0, Lb/o/r;->d:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iput-boolean v2, v0, Lb/o/r;->e:Z

    iget-object v0, v0, Lb/o/r;->h:Lb/o/k;

    sget-object v1, Lb/o/f$a;->ON_PAUSE:Lb/o/f$a;

    invoke-virtual {v0, v1}, Lb/o/k;->e(Lb/o/f$a;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lb/o/r$a;->c:Lb/o/r;

    .line 3
    iget v1, v0, Lb/o/r;->c:I

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lb/o/r;->e:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lb/o/r;->h:Lb/o/k;

    sget-object v3, Lb/o/f$a;->ON_STOP:Lb/o/f$a;

    invoke-virtual {v1, v3}, Lb/o/k;->e(Lb/o/f$a;)V

    iput-boolean v2, v0, Lb/o/r;->f:Z

    :cond_1
    return-void
.end method
