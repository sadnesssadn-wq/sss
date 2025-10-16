.class public Lb/b/k/x$b;
.super Lb/i/m/a0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/k/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/b/k/x;


# direct methods
.method public constructor <init>(Lb/b/k/x;)V
    .locals 0

    iput-object p1, p0, Lb/b/k/x$b;->a:Lb/b/k/x;

    invoke-direct {p0}, Lb/i/m/a0;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lb/b/k/x$b;->a:Lb/b/k/x;

    const/4 v0, 0x0

    iput-object v0, p1, Lb/b/k/x;->u:Lb/b/p/g;

    iget-object p1, p1, Lb/b/k/x;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
