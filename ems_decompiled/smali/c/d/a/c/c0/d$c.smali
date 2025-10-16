.class public Lc/d/a/c/c0/d$c;
.super Landroidx/recyclerview/widget/RecyclerView$e;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/c/c0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$e<",
        "Lc/d/a/c/c0/d$l;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc/d/a/c/c0/d$e;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lb/b/p/i/i;

.field public c:Z

.field public final synthetic d:Lc/d/a/c/c0/d;


# direct methods
.method public constructor <init>(Lc/d/a/c/c0/d;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/c/c0/d$c;->d:Lc/d/a/c/c0/d;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$e;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lc/d/a/c/c0/d$c;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lc/d/a/c/c0/d$c;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 16

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lc/d/a/c/c0/d$c;->c:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lc/d/a/c/c0/d$c;->c:Z

    iget-object v2, v0, Lc/d/a/c/c0/d$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v0, Lc/d/a/c/c0/d$c;->a:Ljava/util/ArrayList;

    new-instance v3, Lc/d/a/c/c0/d$d;

    invoke-direct {v3}, Lc/d/a/c/c0/d$d;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, -0x1

    iget-object v3, v0, Lc/d/a/c/c0/d$c;->d:Lc/d/a/c/c0/d;

    iget-object v3, v3, Lc/d/a/c/c0/d;->e:Lb/b/p/i/g;

    invoke-virtual {v3}, Lb/b/p/i/g;->l()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v5, v3, :cond_f

    iget-object v8, v0, Lc/d/a/c/c0/d$c;->d:Lc/d/a/c/c0/d;

    iget-object v8, v8, Lc/d/a/c/c0/d;->e:Lb/b/p/i/g;

    invoke-virtual {v8}, Lb/b/p/i/g;->l()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lb/b/p/i/i;

    invoke-virtual {v8}, Lb/b/p/i/i;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v0, v8}, Lc/d/a/c/c0/d$c;->b(Lb/b/p/i/i;)V

    :cond_1
    invoke-virtual {v8}, Lb/b/p/i/i;->isCheckable()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v8, v4}, Lb/b/p/i/i;->k(Z)V

    :cond_2
    invoke-virtual {v8}, Lb/b/p/i/i;->hasSubMenu()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1
    iget-object v9, v8, Lb/b/p/i/i;->o:Lb/b/p/i/r;

    .line 2
    invoke-virtual {v9}, Lb/b/p/i/g;->hasVisibleItems()Z

    move-result v10

    if-eqz v10, :cond_e

    if-eqz v5, :cond_3

    iget-object v10, v0, Lc/d/a/c/c0/d$c;->a:Ljava/util/ArrayList;

    new-instance v11, Lc/d/a/c/c0/d$f;

    iget-object v12, v0, Lc/d/a/c/c0/d$c;->d:Lc/d/a/c/c0/d;

    iget v12, v12, Lc/d/a/c/c0/d;->u:I

    invoke-direct {v11, v12, v4}, Lc/d/a/c/c0/d$f;-><init>(II)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v10, v0, Lc/d/a/c/c0/d$c;->a:Ljava/util/ArrayList;

    new-instance v11, Lc/d/a/c/c0/d$g;

    invoke-direct {v11, v8}, Lc/d/a/c/c0/d$g;-><init>(Lb/b/p/i/i;)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v10, v0, Lc/d/a/c/c0/d$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9}, Lb/b/p/i/g;->size()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_1
    if-ge v12, v11, :cond_8

    invoke-virtual {v9, v12}, Lb/b/p/i/g;->getItem(I)Landroid/view/MenuItem;

    move-result-object v14

    check-cast v14, Lb/b/p/i/i;

    invoke-virtual {v14}, Lb/b/p/i/i;->isVisible()Z

    move-result v15

    if-eqz v15, :cond_7

    if-nez v13, :cond_4

    invoke-virtual {v14}, Lb/b/p/i/i;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    if-eqz v15, :cond_4

    const/4 v13, 0x1

    :cond_4
    invoke-virtual {v14}, Lb/b/p/i/i;->isCheckable()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-virtual {v14, v4}, Lb/b/p/i/i;->k(Z)V

    :cond_5
    invoke-virtual {v8}, Lb/b/p/i/i;->isChecked()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-virtual {v0, v8}, Lc/d/a/c/c0/d$c;->b(Lb/b/p/i/i;)V

    :cond_6
    iget-object v15, v0, Lc/d/a/c/c0/d$c;->a:Ljava/util/ArrayList;

    new-instance v4, Lc/d/a/c/c0/d$g;

    invoke-direct {v4, v14}, Lc/d/a/c/c0/d$g;-><init>(Lb/b/p/i/i;)V

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v12, v12, 0x1

    const/4 v4, 0x0

    goto :goto_1

    :cond_8
    if-eqz v13, :cond_e

    iget-object v4, v0, Lc/d/a/c/c0/d$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_2
    if-ge v10, v4, :cond_e

    .line 3
    iget-object v8, v0, Lc/d/a/c/c0/d$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc/d/a/c/c0/d$g;

    iput-boolean v1, v8, Lc/d/a/c/c0/d$g;->b:Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 4
    :cond_9
    iget v4, v8, Lb/b/p/i/i;->b:I

    if-eq v4, v2, :cond_b

    .line 5
    iget-object v2, v0, Lc/d/a/c/c0/d$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v8}, Lb/b/p/i/i;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_a

    const/4 v6, 0x1

    goto :goto_3

    :cond_a
    const/4 v6, 0x0

    :goto_3
    if-eqz v5, :cond_d

    add-int/lit8 v7, v7, 0x1

    iget-object v2, v0, Lc/d/a/c/c0/d$c;->a:Ljava/util/ArrayList;

    new-instance v9, Lc/d/a/c/c0/d$f;

    iget-object v10, v0, Lc/d/a/c/c0/d$c;->d:Lc/d/a/c/c0/d;

    iget v10, v10, Lc/d/a/c/c0/d;->u:I

    invoke-direct {v9, v10, v10}, Lc/d/a/c/c0/d$f;-><init>(II)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    if-nez v6, :cond_d

    invoke-virtual {v8}, Lb/b/p/i/i;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_d

    iget-object v2, v0, Lc/d/a/c/c0/d$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v6, v7

    :goto_4
    if-ge v6, v2, :cond_c

    .line 6
    iget-object v9, v0, Lc/d/a/c/c0/d$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lc/d/a/c/c0/d$g;

    iput-boolean v1, v9, Lc/d/a/c/c0/d$g;->b:Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_c
    const/4 v6, 0x1

    .line 7
    :cond_d
    :goto_5
    new-instance v2, Lc/d/a/c/c0/d$g;

    invoke-direct {v2, v8}, Lc/d/a/c/c0/d$g;-><init>(Lb/b/p/i/i;)V

    iput-boolean v6, v2, Lc/d/a/c/c0/d$g;->b:Z

    iget-object v8, v0, Lc/d/a/c/c0/d$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v4

    :cond_e
    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_f
    const/4 v2, 0x0

    iput-boolean v2, v0, Lc/d/a/c/c0/d$c;->c:Z

    return-void
.end method

.method public b(Lb/b/p/i/i;)V
    .locals 2

    iget-object v0, p0, Lc/d/a/c/c0/d$c;->b:Lb/b/p/i/i;

    if-eq v0, p1, :cond_2

    invoke-virtual {p1}, Lb/b/p/i/i;->isCheckable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/d/a/c/c0/d$c;->b:Lb/b/p/i/i;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb/b/p/i/i;->setChecked(Z)Landroid/view/MenuItem;

    :cond_1
    iput-object p1, p0, Lc/d/a/c/c0/d$c;->b:Lb/b/p/i/i;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lb/b/p/i/i;->setChecked(Z)Landroid/view/MenuItem;

    :cond_2
    :goto_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lc/d/a/c/c0/d$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lc/d/a/c/c0/d$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/d/a/c/c0/d$e;

    instance-of v0, p1, Lc/d/a/c/c0/d$f;

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    instance-of v0, p1, Lc/d/a/c/c0/d$d;

    if-eqz v0, :cond_1

    const/4 p1, 0x3

    return p1

    :cond_1
    instance-of v0, p1, Lc/d/a/c/c0/d$g;

    if-eqz v0, :cond_3

    check-cast p1, Lc/d/a/c/c0/d$g;

    .line 1
    iget-object p1, p1, Lc/d/a/c/c0/d$g;->a:Lb/b/p/i/i;

    .line 2
    invoke-virtual {p1}, Lb/b/p/i/i;->hasSubMenu()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unknown item type."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$a0;I)V
    .locals 3

    check-cast p1, Lc/d/a/c/c0/d$l;

    .line 1
    invoke-virtual {p0, p2}, Lc/d/a/c/c0/d$c;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lc/d/a/c/c0/d$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lc/d/a/c/c0/d$f;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    .line 2
    iget v0, p2, Lc/d/a/c/c0/d$f;->a:I

    .line 3
    iget p2, p2, Lc/d/a/c/c0/d$f;->b:I

    .line 4
    invoke-virtual {p1, v1, v0, v1, p2}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_1

    :cond_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lc/d/a/c/c0/d$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lc/d/a/c/c0/d$g;

    .line 5
    iget-object p2, p2, Lc/d/a/c/c0/d$g;->a:Lb/b/p/i/i;

    .line 6
    iget-object p2, p2, Lb/b/p/i/i;->e:Ljava/lang/CharSequence;

    .line 7
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    check-cast p1, Lcom/google/android/material/internal/NavigationMenuItemView;

    iget-object v0, p0, Lc/d/a/c/c0/d$c;->d:Lc/d/a/c/c0/d;

    iget-object v0, v0, Lc/d/a/c/c0/d;->l:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lc/d/a/c/c0/d$c;->d:Lc/d/a/c/c0/d;

    iget-boolean v2, v0, Lc/d/a/c/c0/d;->j:Z

    if-eqz v2, :cond_3

    iget v0, v0, Lc/d/a/c/c0/d;->i:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setTextAppearance(I)V

    :cond_3
    iget-object v0, p0, Lc/d/a/c/c0/d$c;->d:Lc/d/a/c/c0/d;

    iget-object v0, v0, Lc/d/a/c/c0/d;->k:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_4

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_4
    iget-object v0, p0, Lc/d/a/c/c0/d$c;->d:Lc/d/a/c/c0/d;

    iget-object v0, v0, Lc/d/a/c/c0/d;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    .line 8
    :goto_0
    sget-object v2, Lb/i/m/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 9
    iget-object v0, p0, Lc/d/a/c/c0/d$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lc/d/a/c/c0/d$g;

    iget-boolean v0, p2, Lc/d/a/c/c0/d$g;->b:Z

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setNeedsEmptyIcon(Z)V

    iget-object v0, p0, Lc/d/a/c/c0/d$c;->d:Lc/d/a/c/c0/d;

    iget v0, v0, Lc/d/a/c/c0/d;->n:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setHorizontalPadding(I)V

    iget-object v0, p0, Lc/d/a/c/c0/d$c;->d:Lc/d/a/c/c0/d;

    iget v0, v0, Lc/d/a/c/c0/d;->o:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setIconPadding(I)V

    iget-object v0, p0, Lc/d/a/c/c0/d$c;->d:Lc/d/a/c/c0/d;

    iget-boolean v2, v0, Lc/d/a/c/c0/d;->q:Z

    if-eqz v2, :cond_6

    iget v0, v0, Lc/d/a/c/c0/d;->p:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setIconSize(I)V

    :cond_6
    iget-object v0, p0, Lc/d/a/c/c0/d$c;->d:Lc/d/a/c/c0/d;

    .line 10
    iget v0, v0, Lc/d/a/c/c0/d;->s:I

    .line 11
    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setMaxLines(I)V

    .line 12
    iget-object p2, p2, Lc/d/a/c/c0/d$g;->a:Lb/b/p/i/i;

    .line 13
    invoke-virtual {p1, p2, v1}, Lcom/google/android/material/internal/NavigationMenuItemView;->d(Lb/b/p/i/i;I)V

    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$a0;
    .locals 2

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    .line 1
    :cond_0
    new-instance p1, Lc/d/a/c/c0/d$b;

    iget-object p2, p0, Lc/d/a/c/c0/d$c;->d:Lc/d/a/c/c0/d;

    iget-object p2, p2, Lc/d/a/c/c0/d;->d:Landroid/widget/LinearLayout;

    invoke-direct {p1, p2}, Lc/d/a/c/c0/d$b;-><init>(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    new-instance p2, Lc/d/a/c/c0/d$j;

    iget-object v0, p0, Lc/d/a/c/c0/d$c;->d:Lc/d/a/c/c0/d;

    iget-object v0, v0, Lc/d/a/c/c0/d;->h:Landroid/view/LayoutInflater;

    invoke-direct {p2, v0, p1}, Lc/d/a/c/c0/d$j;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    goto :goto_0

    :cond_2
    new-instance p2, Lc/d/a/c/c0/d$k;

    iget-object v0, p0, Lc/d/a/c/c0/d$c;->d:Lc/d/a/c/c0/d;

    iget-object v0, v0, Lc/d/a/c/c0/d;->h:Landroid/view/LayoutInflater;

    invoke-direct {p2, v0, p1}, Lc/d/a/c/c0/d$k;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    goto :goto_0

    :cond_3
    new-instance p2, Lc/d/a/c/c0/d$i;

    iget-object v0, p0, Lc/d/a/c/c0/d$c;->d:Lc/d/a/c/c0/d;

    iget-object v1, v0, Lc/d/a/c/c0/d;->h:Landroid/view/LayoutInflater;

    iget-object v0, v0, Lc/d/a/c/c0/d;->w:Landroid/view/View$OnClickListener;

    invoke-direct {p2, v1, p1, v0}, Lc/d/a/c/c0/d$i;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)V

    :goto_0
    move-object p1, p2

    :goto_1
    return-object p1
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$a0;)V
    .locals 1

    check-cast p1, Lc/d/a/c/c0/d$l;

    .line 1
    instance-of v0, p1, Lc/d/a/c/c0/d$i;

    if-eqz v0, :cond_1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    check-cast p1, Lcom/google/android/material/internal/NavigationMenuItemView;

    .line 2
    iget-object v0, p1, Lcom/google/android/material/internal/NavigationMenuItemView;->B:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_0
    iget-object p1, p1, Lcom/google/android/material/internal/NavigationMenuItemView;->A:Landroid/widget/CheckedTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/CheckedTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method
