.class public Lc/d/a/c/f0/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/c/f0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lc/d/a/c/f0/b;


# direct methods
.method public constructor <init>(Lc/d/a/c/f0/b;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/c/f0/b$a;->c:Lc/d/a/c/f0/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lc/d/a/c/f0/b$a;->c:Lc/d/a/c/f0/b;

    .line 1
    iget v1, v0, Lc/d/a/c/f0/b;->g:I

    if-lez v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
