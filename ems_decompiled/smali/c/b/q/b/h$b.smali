.class public Lc/b/q/b/h$b;
.super Lcom/emsportal/base/BaseAdapter$BaseViewHolder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/q/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# static fields
.field public static final synthetic j:I


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Lcom/google/android/material/button/MaterialButton;

.field public f:Lcom/google/android/material/button/MaterialButton;

.field public g:Landroidx/recyclerview/widget/RecyclerView;

.field public h:Landroid/view/ViewGroup;

.field public final synthetic i:Lc/b/q/b/h;


# direct methods
.method public constructor <init>(Lc/b/q/b/h;Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Lc/b/q/b/h$b;->i:Lc/b/q/b/h;

    invoke-direct {p0, p1, p2}, Lcom/emsportal/base/BaseAdapter$BaseViewHolder;-><init>(Lcom/emsportal/base/BaseAdapter;Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080454

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc/b/q/b/h$b;->a:Landroid/widget/TextView;

    const v0, 0x7f0804c9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc/b/q/b/h$b;->b:Landroid/widget/TextView;

    const v0, 0x7f080215

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lc/b/q/b/h$b;->g:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0804ae

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v0, 0x7f080464

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc/b/q/b/h$b;->c:Landroid/widget/TextView;

    const v0, 0x7f08024e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lc/b/q/b/h$b;->h:Landroid/view/ViewGroup;

    const v0, 0x7f0804c5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc/b/q/b/h$b;->d:Landroid/widget/TextView;

    const v0, 0x7f08019b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iput-object v0, p0, Lc/b/q/b/h$b;->f:Lcom/google/android/material/button/MaterialButton;

    const v0, 0x7f08019a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iput-object v0, p0, Lc/b/q/b/h$b;->e:Lcom/google/android/material/button/MaterialButton;

    iget-object v0, p0, Lc/b/q/b/h$b;->b:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lc/b/q/b/h$b;->e:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lc/b/q/b/h$b$a;

    invoke-direct {v1, p0, p1, p2}, Lc/b/q/b/h$b$a;-><init>(Lc/b/q/b/h$b;Lc/b/q/b/h;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lc/b/q/b/h$b;->f:Lcom/google/android/material/button/MaterialButton;

    new-instance v0, Lc/b/q/b/h$b$b;

    invoke-direct {v0, p0, p1}, Lc/b/q/b/h$b$b;-><init>(Lc/b/q/b/h$b;Lc/b/q/b/h;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lc/b/q/b/h$b;->g:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 1
    iget-object v1, p1, Lcom/emsportal/base/BaseAdapter;->context:Landroid/content/Context;

    .line 2
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object p2, p0, Lc/b/q/b/h$b;->h:Landroid/view/ViewGroup;

    new-instance v0, Lc/b/q/b/h$b$c;

    invoke-direct {v0, p0, p1}, Lc/b/q/b/h$b$c;-><init>(Lc/b/q/b/h$b;Lc/b/q/b/h;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lc/b/q/b/h$b;->d:Landroid/widget/TextView;

    new-instance v0, Lc/b/q/b/h$b$d;

    invoke-direct {v0, p0, p1}, Lc/b/q/b/h$b$d;-><init>(Lc/b/q/b/h$b;Lc/b/q/b/h;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;I)V
    .locals 6

    check-cast p1, Lc/b/q/d/e;

    invoke-virtual {p1}, Lc/b/q/d/e;->C()I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    if-ne p2, v0, :cond_1

    :cond_0
    iget-object v2, p0, Lc/b/q/b/h$b;->e:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, p0, Lc/b/q/b/h$b;->e:Lcom/google/android/material/button/MaterialButton;

    const v3, 0x7f10004b

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    iget-object v2, p0, Lc/b/q/b/h$b;->e:Lcom/google/android/material/button/MaterialButton;

    iget-object v3, p0, Lc/b/q/b/h$b;->i:Lc/b/q/b/h;

    .line 1
    iget-object v3, v3, Lcom/emsportal/base/BaseAdapter;->context:Landroid/content/Context;

    const v4, 0x7f050263

    .line 2
    invoke-static {v3, v4}, Lb/i/f/a;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/button/MaterialButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 3
    :cond_1
    sget-object v2, Lc/b/q/b/h;->b:Ljava/util/List;

    .line 4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x3

    if-ne p2, v3, :cond_3

    :cond_2
    iget-object v3, p0, Lc/b/q/b/h$b;->e:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v3, p0, Lc/b/q/b/h$b;->e:Lcom/google/android/material/button/MaterialButton;

    const v4, 0x7f100351

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    iget-object v3, p0, Lc/b/q/b/h$b;->e:Lcom/google/android/material/button/MaterialButton;

    iget-object v4, p0, Lc/b/q/b/h$b;->i:Lc/b/q/b/h;

    .line 5
    iget-object v4, v4, Lcom/emsportal/base/BaseAdapter;->context:Landroid/content/Context;

    const v5, 0x7f05003f

    .line 6
    invoke-static {v4, v5}, Lb/i/f/a;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/button/MaterialButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_3
    const/4 v3, 0x2

    const/16 v4, 0x8

    if-ne p2, v3, :cond_4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lc/b/q/b/h$b;->e:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p2, v4}, Landroid/widget/Button;->setVisibility(I)V

    :cond_4
    iget-object p2, p0, Lc/b/q/b/h$b;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lc/b/q/d/e;->E()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lc/b/q/b/h$b;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lc/b/q/d/e;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lc/b/q/b/h$b;->c:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lc/b/q/b/h$b;->i:Lc/b/q/b/h;

    .line 7
    iget-object v3, v3, Lcom/emsportal/base/BaseAdapter;->context:Landroid/content/Context;

    const v5, 0x7f10011d

    .line 8
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lc/b/q/d/e;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lc/b/q/d/e;->v()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const v3, 0x7f100198

    if-le v2, v0, :cond_5

    invoke-virtual {p1}, Lc/b/q/d/e;->G()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lc/b/q/b/h$b;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/q/d/d;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lc/b/q/b/c;

    invoke-direct {p1, p2}, Lc/b/q/b/c;-><init>(Ljava/util/List;)V

    iget-object p2, p0, Lc/b/q/b/h$b;->g:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    iget-object p1, p0, Lc/b/q/b/h$b;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lc/b/q/b/h$b;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lc/b/q/b/h$b;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance p1, Lc/b/q/b/c;

    invoke-direct {p1, p2}, Lc/b/q/b/c;-><init>(Ljava/util/List;)V

    iget-object p2, p0, Lc/b/q/b/h$b;->g:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    :goto_0
    return-void
.end method
