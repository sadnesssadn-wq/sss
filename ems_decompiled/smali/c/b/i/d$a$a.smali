.class public Lc/b/i/d$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/i/d$a;-><init>(Lc/b/i/d;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lc/b/i/d$a;


# direct methods
.method public constructor <init>(Lc/b/i/d$a;Lc/b/i/d;)V
    .locals 0

    iput-object p1, p0, Lc/b/i/d$a$a;->c:Lc/b/i/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lc/b/i/d$a$a;->c:Lc/b/i/d$a;

    .line 1
    iget-object p1, p1, Lc/b/i/d$a;->b:Landroid/widget/FrameLayout;

    .line 2
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setSelected(Z)V

    return-void
.end method
