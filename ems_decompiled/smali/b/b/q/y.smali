.class public Lb/b/q/y;
.super Landroidx/appcompat/widget/ListPopupWindow;
.source ""

# interfaces
.implements Lb/b/q/x;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b/q/y$a;
    }
.end annotation


# static fields
.field public static G:Ljava/lang/reflect/Method;


# instance fields
.field public F:Lb/b/q/x;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_0

    const-class v0, Landroid/widget/PopupWindow;

    const-string v1, "setTouchModal"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lb/b/q/y;->G:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "MenuPopupWindow"

    const-string v1, "Could not find method setTouchModal() on PopupWindow. Oh well."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public b(Lb/b/p/i/g;Landroid/view/MenuItem;)V
    .locals 1

    iget-object v0, p0, Lb/b/q/y;->F:Lb/b/q/x;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lb/b/q/x;->b(Lb/b/p/i/g;Landroid/view/MenuItem;)V

    :cond_0
    return-void
.end method

.method public f(Lb/b/p/i/g;Landroid/view/MenuItem;)V
    .locals 1

    iget-object v0, p0, Lb/b/q/y;->F:Lb/b/q/x;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lb/b/q/x;->f(Lb/b/p/i/g;Landroid/view/MenuItem;)V

    :cond_0
    return-void
.end method

.method public q(Landroid/content/Context;Z)Lb/b/q/t;
    .locals 1

    new-instance v0, Lb/b/q/y$a;

    invoke-direct {v0, p1, p2}, Lb/b/q/y$a;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, p0}, Lb/b/q/y$a;->setHoverListener(Lb/b/q/x;)V

    return-object v0
.end method
