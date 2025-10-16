.class public Lc/b/r/b/e$a;
.super Landroid/widget/Filter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/r/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lc/b/r/b/e;


# direct methods
.method public constructor <init>(Lc/b/r/b/e;Lc/b/r/b/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/b/r/b/e$a;->a:Lc/b/r/b/e;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method public performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 5

    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    if-nez p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lc/b/r/b/e$a;->a:Lc/b/r/b/e;

    const-string v2, ""

    .line 1
    iput-object v2, v1, Lc/b/r/b/e;->e:Ljava/lang/String;

    .line 2
    iget-object v1, v1, Lc/b/r/b/e;->f:Ljava/util/List;

    .line 3
    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lc/b/r/b/e$a;->a:Lc/b/r/b/e;

    .line 4
    iget-object v2, v2, Lc/b/r/b/e;->e:Ljava/lang/String;

    .line 5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_1

    new-instance p1, Landroid/widget/Filter$FilterResults;

    invoke-direct {p1}, Landroid/widget/Filter$FilterResults;-><init>()V

    return-object p1

    :cond_1
    iget-object v1, p0, Lc/b/r/b/e$a;->a:Lc/b/r/b/e;

    .line 6
    iput-object p1, v1, Lc/b/r/b/e;->e:Ljava/lang/String;

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lc/b/r/b/e$a;->a:Lc/b/r/b/e;

    .line 8
    iget-object v2, v2, Lc/b/r/b/e;->f:Ljava/util/List;

    .line 9
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/b/r/c/c;

    invoke-virtual {v3}, Lc/b/r/c/c;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lb/u/a;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_3
    return-object v0
.end method

.method public publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/b/r/b/e$a;->a:Lc/b/r/b/e;

    .line 1
    iget-object v0, v0, Lc/b/r/b/e;->e:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lc/b/r/b/e$a;->a:Lc/b/r/b/e;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    iput-object v1, v0, Lc/b/r/b/e;->e:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lc/b/r/b/e$a;->a:Lc/b/r/b/e;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lc/b/r/b/d;

    invoke-direct {v2, v0}, Lc/b/r/b/d;-><init>(Lc/b/r/b/e;)V

    .line 6
    sget v0, Lc/b/s/a;->d:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v3, "search"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    const-string v3, "http://ws.ems.com.vn/api/v1/order-intl/address-suggestion"

    invoke-static {v3, v0, v1, v2}, Lc/b/t/b;->a(Ljava/lang/String;Ljava/util/HashMap;ZLc/b/t/b$d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    iget-object p1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lc/b/r/b/e$a;->a:Lc/b/r/b/e;

    check-cast p1, Ljava/util/List;

    .line 8
    iput-object p1, p2, Lc/b/r/b/e;->c:Ljava/util/List;

    .line 9
    invoke-virtual {p2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method
