.class public Lc/d/a/c/x/i;
.super Lb/i/m/a;
.source ""


# instance fields
.field public final synthetic d:Lc/d/a/c/x/g;


# direct methods
.method public constructor <init>(Lc/d/a/c/x/g;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/c/x/i;->d:Lc/d/a/c/x/g;

    invoke-direct {p0}, Lb/i/m/a;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;Lb/i/m/d0/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/i/m/a;->a:Landroid/view/View$AccessibilityDelegate;

    .line 2
    iget-object v1, p2, Lb/i/m/d0/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3
    invoke-virtual {v0, p1, v1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4
    iget-object p1, p0, Lc/d/a/c/x/i;->d:Lc/d/a/c/x/g;

    .line 5
    iget-object p1, p1, Lc/d/a/c/x/g;->m:Landroid/view/View;

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lc/d/a/c/x/i;->d:Lc/d/a/c/x/g;

    sget v0, Lc/d/a/c/j;->mtrl_picker_toggle_to_year_selection:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lc/d/a/c/x/i;->d:Lc/d/a/c/x/g;

    sget v0, Lc/d/a/c/j;->mtrl_picker_toggle_to_day_selection:I

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lb/i/m/d0/b;->u(Ljava/lang/CharSequence;)V

    return-void
.end method
