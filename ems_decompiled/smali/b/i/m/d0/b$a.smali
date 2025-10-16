.class public Lb/i/m/d0/b$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/i/m/d0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final e:Lb/i/m/d0/b$a;

.field public static final f:Lb/i/m/d0/b$a;

.field public static final g:Lb/i/m/d0/b$a;

.field public static final h:Lb/i/m/d0/b$a;

.field public static final i:Lb/i/m/d0/b$a;

.field public static final j:Lb/i/m/d0/b$a;

.field public static final k:Lb/i/m/d0/b$a;

.field public static final l:Lb/i/m/d0/b$a;

.field public static final m:Lb/i/m/d0/b$a;

.field public static final n:Lb/i/m/d0/b$a;

.field public static final o:Lb/i/m/d0/b$a;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:I

.field public final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lb/i/m/d0/d$a;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lb/i/m/d0/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v1, Lb/i/m/d0/b$a;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lb/i/m/d0/b$a;-><init>(ILjava/lang/CharSequence;)V

    sput-object v1, Lb/i/m/d0/b$a;->e:Lb/i/m/d0/b$a;

    new-instance v1, Lb/i/m/d0/b$a;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v3}, Lb/i/m/d0/b$a;-><init>(ILjava/lang/CharSequence;)V

    sput-object v1, Lb/i/m/d0/b$a;->f:Lb/i/m/d0/b$a;

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1
    new-instance v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/4 v4, 0x4

    invoke-direct {v2, v4, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_0
    const/16 v2, 0x8

    if-lt v0, v1, :cond_1

    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v4, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 2
    :cond_1
    new-instance v2, Lb/i/m/d0/b$a;

    const/16 v4, 0x10

    invoke-direct {v2, v4, v3}, Lb/i/m/d0/b$a;-><init>(ILjava/lang/CharSequence;)V

    sput-object v2, Lb/i/m/d0/b$a;->g:Lb/i/m/d0/b$a;

    const/16 v2, 0x20

    if-lt v0, v1, :cond_2

    .line 3
    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v4, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_2
    const/16 v2, 0x40

    if-lt v0, v1, :cond_3

    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v4, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_3
    const/16 v2, 0x80

    if-lt v0, v1, :cond_4

    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v4, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_4
    const/16 v2, 0x100

    if-lt v0, v1, :cond_5

    .line 4
    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v4, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_5
    const/16 v2, 0x200

    if-lt v0, v1, :cond_6

    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v4, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_6
    const/16 v2, 0x400

    if-lt v0, v1, :cond_7

    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v4, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_7
    const/16 v2, 0x800

    if-lt v0, v1, :cond_8

    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v4, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 5
    :cond_8
    new-instance v2, Lb/i/m/d0/b$a;

    const/16 v4, 0x1000

    invoke-direct {v2, v4, v3}, Lb/i/m/d0/b$a;-><init>(ILjava/lang/CharSequence;)V

    sput-object v2, Lb/i/m/d0/b$a;->h:Lb/i/m/d0/b$a;

    new-instance v2, Lb/i/m/d0/b$a;

    const/16 v4, 0x2000

    invoke-direct {v2, v4, v3}, Lb/i/m/d0/b$a;-><init>(ILjava/lang/CharSequence;)V

    sput-object v2, Lb/i/m/d0/b$a;->i:Lb/i/m/d0/b$a;

    const/16 v2, 0x4000

    if-lt v0, v1, :cond_9

    .line 6
    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v4, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_9
    const v2, 0x8000

    if-lt v0, v1, :cond_a

    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v4, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_a
    const/high16 v2, 0x10000

    if-lt v0, v1, :cond_b

    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v4, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_b
    const/high16 v2, 0x20000

    if-lt v0, v1, :cond_c

    .line 7
    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v4, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 8
    :cond_c
    new-instance v2, Lb/i/m/d0/b$a;

    const/high16 v4, 0x40000

    invoke-direct {v2, v4, v3}, Lb/i/m/d0/b$a;-><init>(ILjava/lang/CharSequence;)V

    sput-object v2, Lb/i/m/d0/b$a;->j:Lb/i/m/d0/b$a;

    new-instance v2, Lb/i/m/d0/b$a;

    const/high16 v4, 0x80000

    invoke-direct {v2, v4, v3}, Lb/i/m/d0/b$a;-><init>(ILjava/lang/CharSequence;)V

    sput-object v2, Lb/i/m/d0/b$a;->k:Lb/i/m/d0/b$a;

    new-instance v2, Lb/i/m/d0/b$a;

    const/high16 v4, 0x100000

    invoke-direct {v2, v4, v3}, Lb/i/m/d0/b$a;-><init>(ILjava/lang/CharSequence;)V

    sput-object v2, Lb/i/m/d0/b$a;->l:Lb/i/m/d0/b$a;

    const/high16 v2, 0x200000

    if-lt v0, v1, :cond_d

    .line 9
    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v4, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_d
    const/16 v2, 0x17

    if-lt v0, v2, :cond_e

    .line 10
    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SHOW_ON_SCREEN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_0

    :cond_e
    move-object v4, v3

    :goto_0
    const v5, 0x1020036

    if-lt v0, v1, :cond_f

    if-nez v4, :cond_f

    .line 11
    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v4, v5, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_f
    if-lt v0, v2, :cond_10

    .line 12
    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_TO_POSITION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_1

    :cond_10
    move-object v4, v3

    :goto_1
    const v5, 0x1020037

    if-lt v0, v1, :cond_11

    if-nez v4, :cond_11

    .line 13
    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v4, v5, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 14
    :cond_11
    new-instance v4, Lb/i/m/d0/b$a;

    if-lt v0, v2, :cond_12

    sget-object v5, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-object v7, v5

    goto :goto_2

    :cond_12
    move-object v7, v3

    :goto_2
    const v8, 0x1020038

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v4

    invoke-direct/range {v6 .. v11}, Lb/i/m/d0/b$a;-><init>(Ljava/lang/Object;ILjava/lang/CharSequence;Lb/i/m/d0/d;Ljava/lang/Class;)V

    sput-object v4, Lb/i/m/d0/b$a;->m:Lb/i/m/d0/b$a;

    if-lt v0, v2, :cond_13

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_LEFT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_3

    :cond_13
    move-object v4, v3

    :goto_3
    const v5, 0x1020039

    if-lt v0, v1, :cond_14

    if-nez v4, :cond_14

    .line 15
    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v4, v5, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 16
    :cond_14
    new-instance v4, Lb/i/m/d0/b$a;

    if-lt v0, v2, :cond_15

    sget-object v5, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-object v7, v5

    goto :goto_4

    :cond_15
    move-object v7, v3

    :goto_4
    const v8, 0x102003a

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v4

    invoke-direct/range {v6 .. v11}, Lb/i/m/d0/b$a;-><init>(Ljava/lang/Object;ILjava/lang/CharSequence;Lb/i/m/d0/d;Ljava/lang/Class;)V

    sput-object v4, Lb/i/m/d0/b$a;->n:Lb/i/m/d0/b$a;

    if-lt v0, v2, :cond_16

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_RIGHT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_5

    :cond_16
    move-object v4, v3

    :goto_5
    const v5, 0x102003b

    if-lt v0, v1, :cond_17

    if-nez v4, :cond_17

    .line 17
    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v4, v5, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_17
    const/16 v4, 0x1d

    if-lt v0, v4, :cond_18

    .line 18
    sget-object v5, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_6

    :cond_18
    move-object v5, v3

    :goto_6
    const v6, 0x1020046

    if-lt v0, v1, :cond_19

    if-nez v5, :cond_19

    .line 19
    new-instance v5, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v5, v6, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_19
    if-lt v0, v4, :cond_1a

    .line 20
    sget-object v5, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_7

    :cond_1a
    move-object v5, v3

    :goto_7
    const v6, 0x1020047

    if-lt v0, v1, :cond_1b

    if-nez v5, :cond_1b

    .line 21
    new-instance v5, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v5, v6, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_1b
    if-lt v0, v4, :cond_1c

    .line 22
    sget-object v5, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_LEFT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_8

    :cond_1c
    move-object v5, v3

    :goto_8
    const v6, 0x1020048

    if-lt v0, v1, :cond_1d

    if-nez v5, :cond_1d

    .line 23
    new-instance v5, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v5, v6, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_1d
    if-lt v0, v4, :cond_1e

    .line 24
    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_RIGHT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_9

    :cond_1e
    move-object v4, v3

    :goto_9
    const v5, 0x1020049

    if-lt v0, v1, :cond_1f

    if-nez v4, :cond_1f

    .line 25
    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v4, v5, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_1f
    if-lt v0, v2, :cond_20

    .line 26
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CONTEXT_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_a

    :cond_20
    move-object v2, v3

    :goto_a
    const v4, 0x102003c

    if-lt v0, v1, :cond_21

    if-nez v2, :cond_21

    .line 27
    new-instance v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v2, v4, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 28
    :cond_21
    new-instance v2, Lb/i/m/d0/b$a;

    const/16 v4, 0x18

    if-lt v0, v4, :cond_22

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_PROGRESS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-object v6, v4

    goto :goto_b

    :cond_22
    move-object v6, v3

    :goto_b
    const v7, 0x102003d

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-class v10, Lb/i/m/d0/d$b;

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lb/i/m/d0/b$a;-><init>(Ljava/lang/Object;ILjava/lang/CharSequence;Lb/i/m/d0/d;Ljava/lang/Class;)V

    sput-object v2, Lb/i/m/d0/b$a;->o:Lb/i/m/d0/b$a;

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_23

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_MOVE_WINDOW:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_c

    :cond_23
    move-object v2, v3

    :goto_c
    const v4, 0x1020042

    if-lt v0, v1, :cond_24

    if-nez v2, :cond_24

    .line 29
    new-instance v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v2, v4, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_24
    const/16 v2, 0x1c

    if-lt v0, v2, :cond_25

    .line 30
    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SHOW_TOOLTIP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_d

    :cond_25
    move-object v4, v3

    :goto_d
    const v5, 0x1020044

    if-lt v0, v1, :cond_26

    if-nez v4, :cond_26

    .line 31
    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v4, v5, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_26
    if-lt v0, v2, :cond_27

    .line 32
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_HIDE_TOOLTIP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_e

    :cond_27
    move-object v2, v3

    :goto_e
    const v4, 0x1020045

    if-lt v0, v1, :cond_28

    if-nez v2, :cond_28

    .line 33
    new-instance v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v2, v4, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_28
    const/16 v2, 0x1e

    if-lt v0, v2, :cond_29

    .line 34
    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PRESS_AND_HOLD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_f

    :cond_29
    move-object v4, v3

    :goto_f
    const v5, 0x102004a

    if-lt v0, v1, :cond_2a

    if-nez v4, :cond_2a

    .line 35
    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v4, v5, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_2a
    if-lt v0, v2, :cond_2b

    .line 36
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_IME_ENTER:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    goto :goto_10

    :cond_2b
    move-object v2, v3

    :goto_10
    const v4, 0x1020054

    if-lt v0, v1, :cond_2c

    if-nez v2, :cond_2c

    .line 37
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {v0, v4, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_2c
    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lb/i/m/d0/b$a;-><init>(Ljava/lang/Object;ILjava/lang/CharSequence;Lb/i/m/d0/d;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;ILjava/lang/CharSequence;Lb/i/m/d0/d;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/CharSequence;",
            "Lb/i/m/d0/d;",
            "Ljava/lang/Class<",
            "+",
            "Lb/i/m/d0/d$a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lb/i/m/d0/b$a;->b:I

    iput-object p4, p0, Lb/i/m/d0/b$a;->d:Lb/i/m/d0/d;

    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p4, v0, :cond_0

    if-nez p1, :cond_0

    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    :cond_0
    iput-object p1, p0, Lb/i/m/d0/b$a;->a:Ljava/lang/Object;

    iput-object p5, p0, Lb/i/m/d0/b$a;->c:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lb/i/m/d0/b$a;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lb/i/m/d0/b$a;

    if-nez v1, :cond_1

    return v0

    :cond_1
    check-cast p1, Lb/i/m/d0/b$a;

    iget-object v1, p0, Lb/i/m/d0/b$a;->a:Ljava/lang/Object;

    iget-object p1, p1, Lb/i/m/d0/b$a;->a:Ljava/lang/Object;

    if-nez v1, :cond_2

    if-eqz p1, :cond_3

    return v0

    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lb/i/m/d0/b$a;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
