.class public Lc/b/i/h$a;
.super Landroid/widget/Filter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/i/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lc/b/i/h;


# direct methods
.method public constructor <init>(Lc/b/i/h;Lc/b/i/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/b/i/h$a;->a:Lc/b/i/h;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method public performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 2

    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lc/b/i/h$a;->a:Lc/b/i/h;

    const-string v1, ""

    .line 1
    iput-object v1, p1, Lc/b/i/h;->e:Ljava/lang/String;

    return-object v0

    .line 2
    :cond_0
    iget-object v1, p0, Lc/b/i/h$a;->a:Lc/b/i/h;

    .line 3
    iget-object v1, v1, Lc/b/i/h;->f:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lc/b/i/h$a;->a:Lc/b/i/h;

    .line 5
    iput-object p1, v1, Lc/b/i/h;->e:Ljava/lang/String;

    .line 6
    invoke-static {v1, p1}, Lc/b/i/h;->a(Lc/b/i/h;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    :goto_0
    return-object v0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object v0
.end method

.method public publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/b/i/h$a;->a:Lc/b/i/h;

    .line 1
    iget-object v0, v0, Lc/b/i/h;->f:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lc/b/i/h$a;->a:Lc/b/i/h;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    iput-object v1, v0, Lc/b/i/h;->e:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lc/b/i/h$a;->a:Lc/b/i/h;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lc/b/i/g;

    invoke-direct {v1, v0}, Lc/b/i/g;-><init>(Lc/b/i/h;)V

    .line 6
    sget v0, Lc/b/s/a;->d:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "search"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "province_code"

    const-string v3, "10,55,70"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    const-string v3, "http://ws.ems.com.vn/api/v1/address/province-district-ward"

    invoke-static {v3, v0, v2, v1}, Lc/b/t/b;->a(Ljava/lang/String;Ljava/util/HashMap;ZLc/b/t/b$d;)V
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

    iget-object p2, p0, Lc/b/i/h$a;->a:Lc/b/i/h;

    check-cast p1, Ljava/util/List;

    .line 8
    iput-object p1, p2, Lc/b/i/h;->c:Ljava/util/List;

    .line 9
    invoke-virtual {p2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method
