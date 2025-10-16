.class public Lcom/google/android/material/timepicker/TimePickerView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source ""


# static fields
.field public static final synthetic A:I


# instance fields
.field public final w:Lcom/google/android/material/chip/Chip;

.field public final x:Lcom/google/android/material/chip/Chip;

.field public final y:Lcom/google/android/material/button/MaterialButtonToggleGroup;

.field public final z:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/timepicker/TimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Lcom/google/android/material/timepicker/TimePickerView$a;

    invoke-direct {p2, p0}, Lcom/google/android/material/timepicker/TimePickerView$a;-><init>(Lcom/google/android/material/timepicker/TimePickerView;)V

    iput-object p2, p0, Lcom/google/android/material/timepicker/TimePickerView;->z:Landroid/view/View$OnClickListener;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p3, Lc/d/a/c/h;->material_timepicker:I

    invoke-virtual {p1, p3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    sget p1, Lc/d/a/c/f;->material_clock_face:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/timepicker/ClockFaceView;

    sget p1, Lc/d/a/c/f;->material_clock_period_toggle:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerView;->y:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    new-instance p3, Lcom/google/android/material/timepicker/TimePickerView$b;

    invoke-direct {p3, p0}, Lcom/google/android/material/timepicker/TimePickerView$b;-><init>(Lcom/google/android/material/timepicker/TimePickerView;)V

    .line 1
    iget-object p1, p1, Lcom/google/android/material/button/MaterialButtonToggleGroup;->f:Ljava/util/LinkedHashSet;

    invoke-virtual {p1, p3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 2
    sget p1, Lc/d/a/c/f;->material_minute_tv:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/chip/Chip;

    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerView;->w:Lcom/google/android/material/chip/Chip;

    sget p3, Lc/d/a/c/f;->material_hour_tv:I

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/google/android/material/chip/Chip;

    iput-object p3, p0, Lcom/google/android/material/timepicker/TimePickerView;->x:Lcom/google/android/material/chip/Chip;

    sget v0, Lc/d/a/c/f;->material_clock_hand:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/timepicker/ClockHandView;

    .line 3
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lc/d/a/c/q0/a;

    invoke-direct {v2, p0}, Lc/d/a/c/q0/a;-><init>(Lcom/google/android/material/timepicker/TimePickerView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    new-instance v1, Lc/d/a/c/q0/b;

    invoke-direct {v1, p0, v0}, Lc/d/a/c/q0/b;-><init>(Lcom/google/android/material/timepicker/TimePickerView;Landroid/view/GestureDetector;)V

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p3, v1}, Landroid/widget/CheckBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 4
    sget v0, Lc/d/a/c/f;->selection_type:I

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/CheckBox;->setTag(ILjava/lang/Object;)V

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/widget/CheckBox;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p3, p2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/google/android/material/timepicker/TimePickerView;->t()V

    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onVisibilityChanged(Landroid/view/View;I)V

    if-ne p1, p0, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/timepicker/TimePickerView;->t()V

    :cond_0
    return-void
.end method

.method public final t()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->y:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lb/g/d/c;

    invoke-direct {v0}, Lb/g/d/c;-><init>()V

    invoke-virtual {v0, p0}, Lb/g/d/c;->e(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 1
    sget-object v1, Lb/i/m/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    .line 2
    :goto_1
    sget v4, Lc/d/a/c/f;->material_clock_display:I

    .line 3
    iget-object v5, v0, Lb/g/d/c;->f:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v0, Lb/g/d/c;->f:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/g/d/c$a;

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    const/high16 v5, -0x80000000

    const/4 v6, -0x1

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown constraint"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v1, v4, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v1, Lb/g/d/c$b;->B:F

    iput v6, v1, Lb/g/d/c$b;->A:I

    iput v6, v1, Lb/g/d/c$b;->z:I

    goto :goto_2

    :pswitch_1
    iget-object v1, v4, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iput v6, v1, Lb/g/d/c$b;->u:I

    iput v6, v1, Lb/g/d/c$b;->v:I

    iput v2, v1, Lb/g/d/c$b;->J:I

    iput v5, v1, Lb/g/d/c$b;->Q:I

    goto :goto_2

    :pswitch_2
    iget-object v1, v4, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iput v6, v1, Lb/g/d/c$b;->s:I

    iput v6, v1, Lb/g/d/c$b;->t:I

    iput v2, v1, Lb/g/d/c$b;->K:I

    iput v5, v1, Lb/g/d/c$b;->R:I

    goto :goto_2

    :pswitch_3
    iget-object v1, v4, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iput v6, v1, Lb/g/d/c$b;->p:I

    iput v6, v1, Lb/g/d/c$b;->q:I

    iput v6, v1, Lb/g/d/c$b;->r:I

    iput v2, v1, Lb/g/d/c$b;->L:I

    iput v5, v1, Lb/g/d/c$b;->S:I

    goto :goto_2

    :pswitch_4
    iget-object v1, v4, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iput v6, v1, Lb/g/d/c$b;->n:I

    iput v6, v1, Lb/g/d/c$b;->o:I

    iput v2, v1, Lb/g/d/c$b;->I:I

    iput v5, v1, Lb/g/d/c$b;->P:I

    goto :goto_2

    :pswitch_5
    iget-object v1, v4, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iput v6, v1, Lb/g/d/c$b;->m:I

    iput v6, v1, Lb/g/d/c$b;->l:I

    iput v2, v1, Lb/g/d/c$b;->H:I

    iput v5, v1, Lb/g/d/c$b;->N:I

    goto :goto_2

    :pswitch_6
    iget-object v1, v4, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iput v6, v1, Lb/g/d/c$b;->k:I

    iput v6, v1, Lb/g/d/c$b;->j:I

    iput v6, v1, Lb/g/d/c$b;->G:I

    iput v5, v1, Lb/g/d/c$b;->O:I

    goto :goto_2

    :pswitch_7
    iget-object v1, v4, Lb/g/d/c$a;->e:Lb/g/d/c$b;

    iput v6, v1, Lb/g/d/c$b;->i:I

    iput v6, v1, Lb/g/d/c$b;->h:I

    iput v6, v1, Lb/g/d/c$b;->F:I

    iput v5, v1, Lb/g/d/c$b;->M:I

    .line 4
    :cond_3
    :goto_2
    invoke-virtual {v0, p0, v3}, Lb/g/d/c;->c(Landroidx/constraintlayout/widget/ConstraintLayout;Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setConstraintSet(Lb/g/d/c;)V

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
