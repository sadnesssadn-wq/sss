.class public abstract Lc/d/a/c/b0/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/c/b0/l;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lc/d/a/c/b0/a;

.field public e:Lc/d/a/c/m/g;

.field public f:Lc/d/a/c/m/g;


# direct methods
.method public constructor <init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lc/d/a/c/b0/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/d/a/c/b0/b;->c:Ljava/util/ArrayList;

    iput-object p1, p0, Lc/d/a/c/b0/b;->b:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    invoke-virtual {p1}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lc/d/a/c/b0/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lc/d/a/c/b0/b;->d:Lc/d/a/c/b0/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lc/d/a/c/b0/b;->d:Lc/d/a/c/b0/a;

    const/4 v1, 0x0

    .line 1
    iput-object v1, v0, Lc/d/a/c/b0/a;->a:Landroid/animation/Animator;

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lc/d/a/c/b0/b;->d:Lc/d/a/c/b0/a;

    const/4 v1, 0x0

    .line 1
    iput-object v1, v0, Lc/d/a/c/b0/a;->a:Landroid/animation/Animator;

    return-void
.end method

.method public e()Landroid/animation/AnimatorSet;
    .locals 1

    invoke-virtual {p0}, Lc/d/a/c/b0/b;->i()Lc/d/a/c/m/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/d/a/c/b0/b;->h(Lc/d/a/c/m/g;)Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public h(Lc/d/a/c/m/g;)Landroid/animation/AnimatorSet;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "opacity"

    invoke-virtual {p1, v1}, Lc/d/a/c/m/g;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc/d/a/c/b0/b;->b:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {p1, v1, v2, v3}, Lc/d/a/c/m/g;->d(Ljava/lang/String;Ljava/lang/Object;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v1, "scale"

    invoke-virtual {p1, v1}, Lc/d/a/c/m/g;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lc/d/a/c/b0/b;->b:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-virtual {p1, v1, v2, v3}, Lc/d/a/c/m/g;->d(Ljava/lang/String;Ljava/lang/Object;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lc/d/a/c/b0/b;->b:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-virtual {p1, v1, v2, v3}, Lc/d/a/c/m/g;->d(Ljava/lang/String;Ljava/lang/Object;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v1, "width"

    invoke-virtual {p1, v1}, Lc/d/a/c/m/g;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lc/d/a/c/b0/b;->b:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    sget-object v3, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->J:Landroid/util/Property;

    invoke-virtual {p1, v1, v2, v3}, Lc/d/a/c/m/g;->d(Ljava/lang/String;Ljava/lang/Object;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v1, "height"

    invoke-virtual {p1, v1}, Lc/d/a/c/m/g;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lc/d/a/c/b0/b;->b:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    sget-object v3, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->K:Landroid/util/Property;

    invoke-virtual {p1, v1, v2, v3}, Lc/d/a/c/m/g;->d(Ljava/lang/String;Ljava/lang/Object;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v1, "paddingStart"

    invoke-virtual {p1, v1}, Lc/d/a/c/m/g;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lc/d/a/c/b0/b;->b:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    sget-object v3, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->L:Landroid/util/Property;

    invoke-virtual {p1, v1, v2, v3}, Lc/d/a/c/m/g;->d(Ljava/lang/String;Ljava/lang/Object;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string v1, "paddingEnd"

    invoke-virtual {p1, v1}, Lc/d/a/c/m/g;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lc/d/a/c/b0/b;->b:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    sget-object v3, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->M:Landroid/util/Property;

    invoke-virtual {p1, v1, v2, v3}, Lc/d/a/c/m/g;->d(Ljava/lang/String;Ljava/lang/Object;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const-string v1, "labelOpacity"

    invoke-virtual {p1, v1}, Lc/d/a/c/m/g;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lc/d/a/c/b0/b;->b:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    new-instance v3, Lc/d/a/c/b0/b$a;

    const-class v4, Ljava/lang/Float;

    const-string v5, "LABEL_OPACITY_PROPERTY"

    invoke-direct {v3, p0, v4, v5}, Lc/d/a/c/b0/b$a;-><init>(Lc/d/a/c/b0/b;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2, v3}, Lc/d/a/c/m/g;->d(Ljava/lang/String;Ljava/lang/Object;Landroid/util/Property;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->u0(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    return-object p1
.end method

.method public final i()Lc/d/a/c/m/g;
    .locals 2

    iget-object v0, p0, Lc/d/a/c/b0/b;->f:Lc/d/a/c/m/g;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lc/d/a/c/b0/b;->e:Lc/d/a/c/m/g;

    if-nez v0, :cond_1

    iget-object v0, p0, Lc/d/a/c/b0/b;->a:Landroid/content/Context;

    invoke-interface {p0}, Lc/d/a/c/b0/l;->c()I

    move-result v1

    invoke-static {v0, v1}, Lc/d/a/c/m/g;->b(Landroid/content/Context;I)Lc/d/a/c/m/g;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/c/b0/b;->e:Lc/d/a/c/m/g;

    :cond_1
    iget-object v0, p0, Lc/d/a/c/b0/b;->e:Lc/d/a/c/m/g;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lc/d/a/c/b0/b;->d:Lc/d/a/c/b0/a;

    .line 1
    iget-object v1, v0, Lc/d/a/c/b0/a;->a:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 2
    :cond_0
    iput-object p1, v0, Lc/d/a/c/b0/a;->a:Landroid/animation/Animator;

    return-void
.end method
