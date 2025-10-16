.class public Lb/b/k/q$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/i/m/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/k/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lb/b/k/q;


# direct methods
.method public constructor <init>(Lb/b/k/q;)V
    .locals 0

    iput-object p1, p0, Lb/b/k/q$a;->c:Lb/b/k/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lb/b/k/q$a;->c:Lb/b/k/q;

    invoke-virtual {v0, p1}, Lb/b/k/q;->b(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
