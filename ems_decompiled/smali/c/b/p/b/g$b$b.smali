.class public Lc/b/p/b/g$b$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/p/b/g$b;-><init>(Lc/b/p/b/g;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lc/b/p/b/g$b;


# direct methods
.method public constructor <init>(Lc/b/p/b/g$b;Lc/b/p/b/g;)V
    .locals 0

    iput-object p1, p0, Lc/b/p/b/g$b$b;->c:Lc/b/p/b/g$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lc/b/p/b/g$b$b;->c:Lc/b/p/b/g$b;

    iget-object v0, p1, Lc/b/p/b/g$b;->m:Lc/b/p/b/g;

    .line 1
    iget-object v0, v0, Lc/b/p/b/g;->c:Lc/b/p/b/g$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$a0;->getAdapterPosition()I

    move-result p1

    check-cast v0, Lcom/emsportal/grab/activity/RequestGrabParcelActivity;

    .line 3
    iput p1, v0, Lcom/emsportal/grab/activity/RequestGrabParcelActivity;->v:I

    iget-object p1, v0, Lcom/emsportal/grab/activity/RequestGrabParcelActivity;->s:Lb/a/e/c;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/google/android/libraries/places/api/model/Place$Field;

    .line 4
    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Field;->ADDRESS:Lcom/google/android/libraries/places/api/model/Place$Field;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Field;->NAME:Lcom/google/android/libraries/places/api/model/Place$Field;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/libraries/places/api/model/Place$Field;->LAT_LNG:Lcom/google/android/libraries/places/api/model/Place$Field;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;

    sget-object v3, Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;->OVERLAY:Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    invoke-direct {v2, v3, v1}, Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;-><init>(Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;Ljava/util/List;)V

    const-string v1, "VN"

    invoke-virtual {v2, v1}, Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;->setCountry(Ljava/lang/String;)Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;

    move-result-object v1

    const v2, 0x7f1000f7

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;->setHint(Ljava/lang/String;)Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;->build(Landroid/content/Context;)Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/emsportal/activity/SearchPlaceActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v1, v0}, Lb/a/e/c;->a(Ljava/lang/Object;Lb/i/e/c;)V

    :cond_0
    return-void
.end method
