.class public Lc/b/l/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic c:Lc/b/l/l;


# direct methods
.method public constructor <init>(Lc/b/l/l;)V
    .locals 0

    iput-object p1, p0, Lc/b/l/i;->c:Lc/b/l/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p1, p0, Lc/b/l/i;->c:Lc/b/l/l;

    if-eqz p2, :cond_0

    .line 1
    iget-object p1, p1, Lc/b/l/l;->l:Landroid/view/ViewGroup;

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lc/b/l/l;->l:Landroid/view/ViewGroup;

    const/16 p2, 0x8

    .line 2
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
