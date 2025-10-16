.class public Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;
.super Lb/m/d/l;
.source ""

# interfaces
.implements Landroidx/appcompat/widget/SearchView$l;
.implements Lc/d/a/b/k/c;
.implements Lc/d/a/b/e/m/e$b;
.implements Lc/d/a/b/e/m/e$c;


# instance fields
.field private bottomHeader:Landroid/widget/RelativeLayout;

.field private bottomHeaderImageLayout:Landroid/widget/RelativeLayout;

.field private bottomHeaderImageView:Landroid/widget/ImageView;

.field private bottomSubText:Landroid/widget/TextView;

.field private bottomText:Landroid/widget/TextView;

.field private geocoder:Landroid/location/Geocoder;

.field private gpsLatLng:Lcom/google/android/gms/maps/model/LatLng;

.field private gpsLocation:Landroid/location/Location;

.field private inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

.field private locationReceiver:Landroid/content/BroadcastReceiver;

.field private locationWidgetPicker:Lcom/zoho/livechat/android/ui/listener/LocationWidgetPicker;

.field private mGoogleApiClient:Lc/d/a/b/e/m/e;

.field private mMap:Lc/d/a/b/k/a;

.field private marker:Lc/d/a/b/k/j/c;

.field private radius:D

.field private radiusIconView:Landroid/widget/ImageView;

.field private radiusLayout:Landroidx/cardview/widget/CardView;

.field private radiusTextView:Landroid/widget/TextView;

.field private selectedLatLng:Lcom/google/android/gms/maps/model/LatLng;

.field private serverLatLng:Lcom/google/android/gms/maps/model/LatLng;

.field private suggestionAdapter:Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter;

.field private suggestionsView:Landroidx/recyclerview/widget/RecyclerView;

.field private supportMapFragment:Lc/d/a/b/k/g;

.field private toolbar:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lb/m/d/l;-><init>()V

    new-instance v0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment$1;-><init>(Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;)V

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->locationReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static synthetic access$000(Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->selectedLatLng:Lcom/google/android/gms/maps/model/LatLng;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->selectedLatLng:Lcom/google/android/gms/maps/model/LatLng;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->serverLatLng:Lcom/google/android/gms/maps/model/LatLng;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->updateLocationUI()V

    return-void
.end method

.method public static synthetic access$1100(Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;)Lc/d/a/b/e/m/e;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->mGoogleApiClient:Lc/d/a/b/e/m/e;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->gpsLatLng:Lcom/google/android/gms/maps/model/LatLng;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->gpsLatLng:Lcom/google/android/gms/maps/model/LatLng;

    return-object p1
.end method

.method public static synthetic access$300(Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;)Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->suggestionAdapter:Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;)Lcom/zoho/livechat/android/ui/listener/LocationWidgetPicker;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->locationWidgetPicker:Lcom/zoho/livechat/android/ui/listener/LocationWidgetPicker;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->handleLocationShare(Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$600(Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;)D
    .locals 2

    iget-wide v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->radius:D

    return-wide v0
.end method

.method public static synthetic access$700(Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;)Lc/d/a/b/k/j/c;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->marker:Lc/d/a/b/k/j/c;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->updateBottomHeader()V

    return-void
.end method

.method public static synthetic access$900(Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;)Landroid/location/Location;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->gpsLocation:Landroid/location/Location;

    return-object p0
.end method

.method public static synthetic access$902(Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->gpsLocation:Landroid/location/Location;

    return-object p1
.end method

.method private calculateBounds(Lcom/google/android/gms/maps/model/LatLng;D)Lcom/google/android/gms/maps/model/LatLngBounds;
    .locals 5

    new-instance v0, Lcom/google/android/gms/maps/model/LatLngBounds$a;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/LatLngBounds$a;-><init>()V

    const-wide/16 v1, 0x0

    invoke-static {p1, p2, p3, v1, v2}, Lcom/zoho/livechat/android/utils/SphericalUtil;->computeOffset(Lcom/google/android/gms/maps/model/LatLng;DD)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/LatLngBounds$a;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$a;

    const-wide v1, 0x4056800000000000L    # 90.0

    invoke-static {p1, p2, p3, v1, v2}, Lcom/zoho/livechat/android/utils/SphericalUtil;->computeOffset(Lcom/google/android/gms/maps/model/LatLng;DD)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/LatLngBounds$a;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$a;

    const-wide v1, 0x4066800000000000L    # 180.0

    invoke-static {p1, p2, p3, v1, v2}, Lcom/zoho/livechat/android/utils/SphericalUtil;->computeOffset(Lcom/google/android/gms/maps/model/LatLng;DD)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/LatLngBounds$a;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$a;

    const-wide v1, 0x4070e00000000000L    # 270.0

    invoke-static {p1, p2, p3, v1, v2}, Lcom/zoho/livechat/android/utils/SphericalUtil;->computeOffset(Lcom/google/android/gms/maps/model/LatLng;DD)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/LatLngBounds$a;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$a;

    .line 1
    iget-wide p1, v0, Lcom/google/android/gms/maps/model/LatLngBounds$a;->c:D

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    const-string p2, "no included points"

    invoke-static {p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->o(ZLjava/lang/Object;)V

    new-instance p1, Lcom/google/android/gms/maps/model/LatLngBounds;

    new-instance p2, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v1, v0, Lcom/google/android/gms/maps/model/LatLngBounds$a;->a:D

    iget-wide v3, v0, Lcom/google/android/gms/maps/model/LatLngBounds$a;->c:D

    invoke-direct {p2, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    new-instance p3, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v1, v0, Lcom/google/android/gms/maps/model/LatLngBounds$a;->b:D

    iget-wide v3, v0, Lcom/google/android/gms/maps/model/LatLngBounds$a;->d:D

    invoke-direct {p3, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/maps/model/LatLngBounds;-><init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V

    return-object p1
.end method

.method private getAddressForLocation(Lcom/google/android/gms/maps/model/LatLng;)Landroid/location/Address;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->geocoder:Landroid/location/Geocoder;

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->c:D

    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->d:D

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    move-object p1, v0

    :goto_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/location/Address;

    :cond_0
    return-object v0
.end method

.method private getDeviceLocation()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const-string v0, "Listener must not be null"

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v1, v2}, Lb/i/f/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lc/d/a/b/e/m/e$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lc/d/a/b/e/m/e$a;-><init>(Landroid/content/Context;)V

    .line 1
    invoke-static {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lc/d/a/b/e/m/e$a;->l:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    invoke-static {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lc/d/a/b/e/m/e$a;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    sget-object v0, Lc/d/a/b/j/d;->c:Lc/d/a/b/e/m/a;

    const-string v2, "Api must not be null"

    .line 4
    invoke-static {v0, v2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lc/d/a/b/e/m/e$a;->g:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, v0, Lc/d/a/b/e/m/a;->a:Lc/d/a/b/e/m/a$a;

    const-string v2, "Base client builder must not be null"

    .line 6
    invoke-static {v0, v2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lc/d/a/b/e/m/a$e;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v2, v1, Lc/d/a/b/e/m/e$a;->b:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v2, v1, Lc/d/a/b/e/m/e$a;->a:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 7
    invoke-virtual {v1}, Lc/d/a/b/e/m/e$a;->a()Lc/d/a/b/e/m/e;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->mGoogleApiClient:Lc/d/a/b/e/m/e;

    invoke-virtual {v0}, Lc/d/a/b/e/m/e;->d()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Exception: %s"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private getImageUrlForLocation(DD)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://maps.zoho.com/v2/staticimage?lat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, "&lon="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, "&zoom=12&height=250&width=300&marker=true"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getLocationPermission()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Lb/i/f/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x190

    invoke-static {v0, v1, v2}, Lb/i/e/a;->f(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private getMapsApiKey()Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.google.android.geo.API_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getRadiusText(D)Ljava/lang/String;
    .locals 7

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double v2, p1, v0

    rem-double/2addr p1, v0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/16 v4, 0x0

    cmpl-double v6, p1, v4

    if-nez v6, :cond_0

    sget p1, Lcom/zoho/livechat/android/R$string;->livechat_widgets_location_radius_integer:I

    new-array p2, v1, [Ljava/lang/Object;

    double-to-int v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    sget p1, Lcom/zoho/livechat/android/R$string;->livechat_widgets_location_radius_float:I

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private handleLocationShare(Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->locationWidgetPicker:Lcom/zoho/livechat/android/ui/listener/LocationWidgetPicker;

    if-eqz v3, :cond_8

    iget-wide v3, v1, Lcom/google/android/gms/maps/model/LatLng;->c:D

    iget-wide v5, v1, Lcom/google/android/gms/maps/model/LatLng;->d:D

    invoke-direct/range {p0 .. p1}, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->getAddressForLocation(Lcom/google/android/gms/maps/model/LatLng;)Landroid/location/Address;

    move-result-object v7

    const-string v8, ""

    new-instance v9, Ljava/util/Hashtable;

    invoke-direct {v9}, Ljava/util/Hashtable;-><init>()V

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v10

    const-string v11, "lat"

    invoke-virtual {v9, v11, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v10

    const-string v11, "lng"

    invoke-virtual {v9, v11, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, ", "

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v7

    if-eqz v2, :cond_0

    invoke-static {v8, v2, v10}, Lc/a/a/a/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v16, v8

    const-string v8, "title"

    invoke-virtual {v9, v8, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v8, v16

    :cond_0
    if-eqz v11, :cond_1

    invoke-static {v8, v11, v10}, Lc/a/a/a/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v2, "street"

    invoke-virtual {v9, v2, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz v12, :cond_2

    invoke-static {v8, v12, v10}, Lc/a/a/a/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_2
    if-eqz v13, :cond_3

    invoke-static {v8, v13, v10}, Lc/a/a/a/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v2, "city"

    invoke-virtual {v9, v2, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz v14, :cond_5

    invoke-static {v8, v14}, Lc/a/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v7, :cond_4

    const-string v8, " "

    invoke-static {v2, v8, v7}, Lc/a/a/a/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v7, "state"

    invoke-virtual {v9, v7, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, v2

    :cond_5
    if-eqz v15, :cond_6

    invoke-static {v8, v15}, Lc/a/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_6
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_7
    iget-wide v2, v1, Lcom/google/android/gms/maps/model/LatLng;->c:D

    iget-wide v4, v1, Lcom/google/android/gms/maps/model/LatLng;->d:D

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->getImageUrlForLocation(DD)Ljava/lang/String;

    move-result-object v1

    const-string v2, "image"

    invoke-virtual {v9, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    const-string v2, "type"

    const-string v3, "location"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v9}, Lcom/zoho/wms/common/HttpDataWraper;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "value"

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->locationWidgetPicker:Lcom/zoho/livechat/android/ui/listener/LocationWidgetPicker;

    invoke-interface {v2, v8, v1}, Lcom/zoho/livechat/android/ui/listener/LocationWidgetPicker;->onLocationPicked(Ljava/lang/String;Ljava/util/Hashtable;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :cond_8
    return-void
.end method

.method private loadNearByPlaces(DDD)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v2, p5, v0

    if-nez v2, :cond_0

    const-wide p5, 0x408f400000000000L    # 1000.0

    :cond_0
    new-instance v0, Lcom/zoho/livechat/android/comm/GetLocationSuggestions;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->getMapsApiKey()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p5, p6, p2}, Lcom/zoho/livechat/android/comm/GetLocationSuggestions;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private updateBottomHeader()V
    .locals 5

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->bottomHeader:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment$4;

    invoke-direct {v1, p0}, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment$4;-><init>(Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->selectedLatLng:Lcom/google/android/gms/maps/model/LatLng;

    const-string v1, ","

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->bottomText:Landroid/widget/TextView;

    sget v2, Lcom/zoho/livechat/android/R$string;->livechat_widgets_location_send_selected:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->bottomSubText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->selectedLatLng:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v3, v3, Lcom/google/android/gms/maps/model/LatLng;->c:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->selectedLatLng:Lcom/google/android/gms/maps/model/LatLng;

    :goto_0
    iget-wide v3, v1, Lcom/google/android/gms/maps/model/LatLng;->d:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->bottomHeaderImageView:Landroid/widget/ImageView;

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_location:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->serverLatLng:Lcom/google/android/gms/maps/model/LatLng;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->bottomText:Landroid/widget/TextView;

    sget v1, Lcom/zoho/livechat/android/R$string;->livechat_widgets_location_send_current:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->bottomHeaderImageView:Landroid/widget/ImageView;

    sget v1, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_mylocation:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->gpsLocation:Landroid/location/Location;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->bottomSubText:Landroid/widget/TextView;

    sget v2, Lcom/zoho/livechat/android/R$string;->livechat_widgets_location_accuracy:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->bottomSubText:Landroid/widget/TextView;

    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->bottomHeader:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->bottomText:Landroid/widget/TextView;

    sget v2, Lcom/zoho/livechat/android/R$string;->livechat_widgets_location_send_selected:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->bottomSubText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->serverLatLng:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v3, v3, Lcom/google/android/gms/maps/model/LatLng;->c:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->serverLatLng:Lcom/google/android/gms/maps/model/LatLng;

    goto :goto_0

    :goto_1
    return-void
.end method

.method private updateLocationUI()V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const-string v0, "1"

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->mMap:Lc/d/a/b/k/a;

    if-nez v1, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    iget-object v1, v1, Lc/d/a/b/k/a;->a:Lc/d/a/b/k/i/b;

    invoke-interface {v1}, Lc/d/a/b/k/i/b;->clear()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_c

    .line 2
    :try_start_1
    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->serverLatLng:Lcom/google/android/gms/maps/model/LatLng;

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->getLocationPermission()V

    :cond_1
    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->serverLatLng:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->gpsLatLng:Lcom/google/android/gms/maps/model/LatLng;

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_9

    new-instance v3, Lc/d/a/b/k/j/d;

    invoke-direct {v3}, Lc/d/a/b/k/j/d;-><init>()V

    iget-object v4, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->selectedLatLng:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    move-object v4, v1

    .line 3
    :goto_1
    iput-object v4, v3, Lc/d/a/b/k/j/d;->c:Lcom/google/android/gms/maps/model/LatLng;

    .line 4
    iget-object v4, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->mMap:Lc/d/a/b/k/a;

    .line 5
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_c

    :try_start_2
    iget-object v4, v4, Lc/d/a/b/k/a;->a:Lc/d/a/b/k/i/b;

    invoke-interface {v4, v3}, Lc/d/a/b/k/i/b;->g0(Lc/d/a/b/k/j/d;)Lc/d/a/b/i/k/j;

    move-result-object v3

    if-eqz v3, :cond_4

    new-instance v4, Lc/d/a/b/k/j/c;

    invoke-direct {v4, v3}, Lc/d/a/b/k/j/c;-><init>(Lc/d/a/b/i/k/j;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_c

    goto :goto_2

    :cond_4
    move-object v4, v2

    .line 6
    :goto_2
    :try_start_3
    iput-object v4, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->marker:Lc/d/a/b/k/j/c;

    iget-wide v3, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->radius:D
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_c

    const-wide/16 v5, 0x0

    const-string v7, "CameraUpdateFactory is not initialized"

    const/16 v8, 0x8

    const-string v9, "null reference"

    const/4 v10, 0x0

    cmpl-double v11, v3, v5

    if-eqz v11, :cond_5

    :try_start_4
    new-instance v5, Lc/d/a/b/k/j/b;

    invoke-direct {v5}, Lc/d/a/b/k/j/b;-><init>()V

    .line 7
    iput-object v1, v5, Lc/d/a/b/k/j/b;->c:Lcom/google/android/gms/maps/model/LatLng;

    .line 8
    iput-wide v3, v5, Lc/d/a/b/k/j/b;->d:D

    const/high16 v3, 0x3fc00000    # 1.5f

    .line 9
    invoke-static {v3}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v3

    int-to-float v3, v3

    .line 10
    iput v3, v5, Lc/d/a/b/k/j/b;->e:F

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchPrimaryColor(Landroid/content/Context;)I

    move-result v3

    .line 12
    iput v3, v5, Lc/d/a/b/k/j/b;->f:I

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchPrimaryColor(Landroid/content/Context;)I

    move-result v3

    invoke-static {v3, v8}, Lcom/zoho/livechat/android/utils/ResourceUtil;->getOverlayColor(II)I

    move-result v3

    .line 14
    iput v3, v5, Lc/d/a/b/k/j/b;->g:I

    .line 15
    iget-object v3, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->mMap:Lc/d/a/b/k/a;

    .line 16
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_c

    :try_start_5
    iget-object v3, v3, Lc/d/a/b/k/a;->a:Lc/d/a/b/k/i/b;

    invoke-interface {v3, v5}, Lc/d/a/b/k/i/b;->E(Lc/d/a/b/k/j/b;)Lc/d/a/b/i/k/g;

    move-result-object v3

    .line 17
    invoke-static {v3, v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_c

    .line 18
    :try_start_6
    iget-wide v3, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->radius:D

    invoke-direct {p0, v1, v3, v4}, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->calculateBounds(Lcom/google/android/gms/maps/model/LatLng;D)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v3

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v4
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_c

    .line 19
    :try_start_7
    sget-object v5, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->g:Lc/d/a/b/k/i/a;

    invoke-static {v5, v7}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-interface {v5, v3, v4}, Lc/d/a/b/k/i/a;->p(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lc/d/a/b/f/b;

    move-result-object v4

    .line 21
    invoke-static {v4, v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_c

    .line 22
    :try_start_8
    iget-object v5, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->mMap:Lc/d/a/b/k/a;

    .line 23
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_c

    :try_start_9
    iget-object v5, v5, Lc/d/a/b/k/a;->a:Lc/d/a/b/k/i/b;

    invoke-interface {v5, v4}, Lc/d/a/b/k/i/b;->N(Lc/d/a/b/f/b;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_c

    .line 24
    :try_start_a
    iget-object v4, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->mMap:Lc/d/a/b/k/a;

    .line 25
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_a} :catch_c

    :try_start_b
    iget-object v4, v4, Lc/d/a/b/k/a;->a:Lc/d/a/b/k/i/b;

    invoke-interface {v4, v3}, Lc/d/a/b/k/i/b;->A(Lcom/google/android/gms/maps/model/LatLngBounds;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_b} :catch_c

    .line 26
    :try_start_c
    iget-object v3, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->radiusLayout:Landroidx/cardview/widget/CardView;

    invoke-virtual {v3, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->radiusTextView:Landroid/widget/TextView;

    iget-wide v4, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->radius:D

    invoke-direct {p0, v4, v5}, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->getRadiusText(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :catch_0
    move-exception v0

    .line 27
    new-instance v1, Lc/d/a/b/k/j/f;

    invoke-direct {v1, v0}, Lc/d/a/b/k/j/f;-><init>(Landroid/os/RemoteException;)V

    throw v1

    :catch_1
    move-exception v0

    .line 28
    new-instance v1, Lc/d/a/b/k/j/f;

    invoke-direct {v1, v0}, Lc/d/a/b/k/j/f;-><init>(Landroid/os/RemoteException;)V

    throw v1

    :catch_2
    move-exception v0

    .line 29
    new-instance v1, Lc/d/a/b/k/j/f;

    invoke-direct {v1, v0}, Lc/d/a/b/k/j/f;-><init>(Landroid/os/RemoteException;)V

    throw v1

    :catch_3
    move-exception v0

    .line 30
    new-instance v1, Lc/d/a/b/k/j/f;

    invoke-direct {v1, v0}, Lc/d/a/b/k/j/f;-><init>(Landroid/os/RemoteException;)V

    throw v1

    .line 31
    :cond_5
    iget-object v3, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->radiusLayout:Landroidx/cardview/widget/CardView;

    invoke-virtual {v3, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->mMap:Lc/d/a/b/k/a;
    :try_end_c
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_c} :catch_c

    const/high16 v4, 0x41700000    # 15.0f

    .line 32
    :try_start_d
    sget-object v5, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->g:Lc/d/a/b/k/i/a;

    invoke-static {v5, v7}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-interface {v5, v1, v4}, Lc/d/a/b/k/i/a;->d0(Lcom/google/android/gms/maps/model/LatLng;F)Lc/d/a/b/f/b;

    move-result-object v4

    .line 34
    invoke-static {v4, v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_a
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_d} :catch_c

    .line 35
    :try_start_e
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_e .. :try_end_e} :catch_c

    :try_start_f
    iget-object v3, v3, Lc/d/a/b/k/a;->a:Lc/d/a/b/k/i/b;

    invoke-interface {v3, v4}, Lc/d/a/b/k/i/b;->N(Lc/d/a/b/f/b;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_9
    .catch Ljava/lang/SecurityException; {:try_start_f .. :try_end_f} :catch_c

    .line 36
    :goto_3
    :try_start_10
    iget-object v3, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->serverLatLng:Lcom/google/android/gms/maps/model/LatLng;

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->mMap:Lc/d/a/b/k/a;

    const/4 v4, 0x1

    .line 37
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/SecurityException; {:try_start_10 .. :try_end_10} :catch_c

    :try_start_11
    iget-object v3, v3, Lc/d/a/b/k/a;->a:Lc/d/a/b/k/i/b;

    invoke-interface {v3, v4}, Lc/d/a/b/k/i/b;->c0(Z)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_6
    .catch Ljava/lang/SecurityException; {:try_start_11 .. :try_end_11} :catch_c

    .line 38
    :try_start_12
    iget-object v3, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->mMap:Lc/d/a/b/k/a;

    .line 39
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/SecurityException; {:try_start_12 .. :try_end_12} :catch_c

    :try_start_13
    iget-object v4, v3, Lc/d/a/b/k/a;->b:Lc/d/a/b/k/h;

    if-nez v4, :cond_6

    new-instance v4, Lc/d/a/b/k/h;

    iget-object v5, v3, Lc/d/a/b/k/a;->a:Lc/d/a/b/k/i/b;

    invoke-interface {v5}, Lc/d/a/b/k/i/b;->s()Lc/d/a/b/k/i/g;

    move-result-object v5

    invoke-direct {v4, v5}, Lc/d/a/b/k/h;-><init>(Lc/d/a/b/k/i/g;)V

    iput-object v4, v3, Lc/d/a/b/k/a;->b:Lc/d/a/b/k/h;

    :cond_6
    iget-object v3, v3, Lc/d/a/b/k/a;->b:Lc/d/a/b/k/h;
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_13} :catch_c

    .line 40
    :try_start_14
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/SecurityException; {:try_start_14 .. :try_end_14} :catch_c

    :try_start_15
    iget-object v3, v3, Lc/d/a/b/k/h;->a:Lc/d/a/b/k/i/g;

    invoke-interface {v3, v10}, Lc/d/a/b/k/i/g;->t(Z)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_15 .. :try_end_15} :catch_c

    .line 41
    :try_start_16
    iget-object v3, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->supportMapFragment:Lc/d/a/b/k/g;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const-string v3, "2"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0xa

    invoke-virtual {v0, v3, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v3, 0xc

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/high16 v3, 0x41900000    # 18.0f

    invoke-static {v3}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v4

    invoke-static {v3}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v3

    invoke-virtual {v0, v10, v10, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_4

    :catch_4
    move-exception v0

    .line 42
    new-instance v1, Lc/d/a/b/k/j/f;

    invoke-direct {v1, v0}, Lc/d/a/b/k/j/f;-><init>(Landroid/os/RemoteException;)V

    throw v1

    :catch_5
    move-exception v0

    .line 43
    new-instance v1, Lc/d/a/b/k/j/f;

    invoke-direct {v1, v0}, Lc/d/a/b/k/j/f;-><init>(Landroid/os/RemoteException;)V

    throw v1

    :catch_6
    move-exception v0

    .line 44
    new-instance v1, Lc/d/a/b/k/j/f;

    invoke-direct {v1, v0}, Lc/d/a/b/k/j/f;-><init>(Landroid/os/RemoteException;)V

    throw v1

    .line 45
    :cond_7
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->mMap:Lc/d/a/b/k/a;

    .line 46
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/SecurityException; {:try_start_16 .. :try_end_16} :catch_c

    :try_start_17
    iget-object v0, v0, Lc/d/a/b/k/a;->a:Lc/d/a/b/k/i/b;

    invoke-interface {v0, v10}, Lc/d/a/b/k/i/b;->c0(Z)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_8
    .catch Ljava/lang/SecurityException; {:try_start_17 .. :try_end_17} :catch_c

    .line 47
    :cond_8
    :goto_4
    :try_start_18
    new-instance v0, Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter;

    invoke-direct {v0, v2}, Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->suggestionAdapter:Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter;

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->suggestionsView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->suggestionsView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->suggestionAdapter:Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->suggestionAdapter:Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter;

    new-instance v2, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment$2;-><init>(Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;)V

    invoke-virtual {v0, v2}, Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter;->setSuggestionClickListener(Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter$LocationSuggestionClickListener;)V

    iget-wide v4, v1, Lcom/google/android/gms/maps/model/LatLng;->c:D

    iget-wide v6, v1, Lcom/google/android/gms/maps/model/LatLng;->d:D

    iget-wide v8, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->radius:D

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->loadNearByPlaces(DDD)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->mMap:Lc/d/a/b/k/a;

    new-instance v1, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment$3;

    invoke-direct {v1, p0}, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment$3;-><init>(Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;)V

    .line 48
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catch Ljava/lang/SecurityException; {:try_start_18 .. :try_end_18} :catch_c

    :try_start_19
    iget-object v0, v0, Lc/d/a/b/k/a;->a:Lc/d/a/b/k/i/b;

    new-instance v2, Lc/d/a/b/k/p;

    invoke-direct {v2, v1}, Lc/d/a/b/k/p;-><init>(Lc/d/a/b/k/a$a;)V

    invoke-interface {v0, v2}, Lc/d/a/b/k/i/b;->y(Lc/d/a/b/k/i/h;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_7
    .catch Ljava/lang/SecurityException; {:try_start_19 .. :try_end_19} :catch_c

    .line 49
    :try_start_1a
    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->updateBottomHeader()V

    goto :goto_6

    :catch_7
    move-exception v0

    .line 50
    new-instance v1, Lc/d/a/b/k/j/f;

    invoke-direct {v1, v0}, Lc/d/a/b/k/j/f;-><init>(Landroid/os/RemoteException;)V

    throw v1

    :catch_8
    move-exception v0

    .line 51
    new-instance v1, Lc/d/a/b/k/j/f;

    invoke-direct {v1, v0}, Lc/d/a/b/k/j/f;-><init>(Landroid/os/RemoteException;)V

    throw v1

    :catch_9
    move-exception v0

    .line 52
    new-instance v1, Lc/d/a/b/k/j/f;

    invoke-direct {v1, v0}, Lc/d/a/b/k/j/f;-><init>(Landroid/os/RemoteException;)V

    throw v1

    :catch_a
    move-exception v0

    .line 53
    new-instance v1, Lc/d/a/b/k/j/f;

    invoke-direct {v1, v0}, Lc/d/a/b/k/j/f;-><init>(Landroid/os/RemoteException;)V

    throw v1

    :catch_b
    move-exception v0

    .line 54
    new-instance v1, Lc/d/a/b/k/j/f;

    invoke-direct {v1, v0}, Lc/d/a/b/k/j/f;-><init>(Landroid/os/RemoteException;)V

    throw v1

    .line 55
    :cond_9
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->bottomSubText:Landroid/widget/TextView;

    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->bottomHeader:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6

    :catch_c
    move-exception v0

    goto :goto_5

    :catch_d
    move-exception v0

    .line 56
    new-instance v1, Lc/d/a/b/k/j/f;

    invoke-direct {v1, v0}, Lc/d/a/b/k/j/f;-><init>(Landroid/os/RemoteException;)V

    throw v1
    :try_end_1a
    .catch Ljava/lang/SecurityException; {:try_start_1a .. :try_end_1a} :catch_c

    .line 57
    :goto_5
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Exception: %s"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance v0, Landroid/location/Geocoder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->geocoder:Landroid/location/Geocoder;

    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zoho/wms/common/HttpDataWraper;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Hashtable;

    new-instance v0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;

    invoke-direct {v0, p1}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->getInputCard()Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    move-result-object p1

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->getLabel()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->toolbar:Landroidx/appcompat/widget/Toolbar;

    sget v0, Lcom/zoho/livechat/android/R$string;->livechat_widgets_location_select:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lb/m/d/y;

    move-result-object p1

    .line 1
    new-instance v0, Lc/d/a/b/k/g;

    invoke-direct {v0}, Lc/d/a/b/k/g;-><init>()V

    .line 2
    iput-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->supportMapFragment:Lc/d/a/b/k/g;

    .line 3
    new-instance v0, Lb/m/d/a;

    invoke-direct {v0, p1}, Lb/m/d/a;-><init>(Lb/m/d/y;)V

    .line 4
    sget p1, Lcom/zoho/livechat/android/R$id;->siq_map_container:I

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->supportMapFragment:Lc/d/a/b/k/g;

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, p1, v1, v2}, Lb/m/d/i0;->j(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Lb/m/d/i0;

    .line 6
    invoke-virtual {v0}, Lb/m/d/a;->e()I

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->supportMapFragment:Lc/d/a/b/k/g;

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 9
    iget-object p1, p1, Lc/d/a/b/k/g;->c:Lc/d/a/b/k/g$b;

    .line 10
    iget-object v0, p1, Lc/d/a/b/f/a;->a:Lc/d/a/b/f/c;

    if-eqz v0, :cond_2

    .line 11
    check-cast v0, Lc/d/a/b/k/g$a;

    .line 12
    :try_start_0
    iget-object p1, v0, Lc/d/a/b/k/g$a;->b:Lc/d/a/b/k/i/c;

    new-instance v0, Lc/d/a/b/k/o;

    invoke-direct {v0, p0}, Lc/d/a/b/k/o;-><init>(Lc/d/a/b/k/c;)V

    invoke-interface {p1, v0}, Lc/d/a/b/k/i/c;->l(Lc/d/a/b/k/i/j;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    new-instance v0, Lc/d/a/b/k/j/f;

    invoke-direct {v0, p1}, Lc/d/a/b/k/j/f;-><init>(Landroid/os/RemoteException;)V

    throw v0

    .line 13
    :cond_2
    iget-object p1, p1, Lc/d/a/b/k/g$b;->h:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 14
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "getMapAsync must be called on the main thread."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_2
    return-void
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {p1}, Lcom/google/android/gms/location/LocationRequest;-><init>()V

    const/16 v0, 0x64

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/location/LocationRequest;->x(I)Lcom/google/android/gms/location/LocationRequest;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/location/LocationRequest;->v(J)Lcom/google/android/gms/location/LocationRequest;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/location/LocationRequest;->w(I)Lcom/google/android/gms/location/LocationRequest;

    sget-object v0, Lc/d/a/b/j/d;->d:Lc/d/a/b/i/j/e0;

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->mGoogleApiClient:Lc/d/a/b/e/m/e;

    new-instance v2, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment$5;

    invoke-direct {v2, p0}, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment$5;-><init>(Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;)V

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    const-string v3, "Calling thread must be a prepared Looper thread."

    invoke-static {v0, v3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lc/d/a/b/i/j/f0;

    invoke-direct {v0, v1, p1, v2}, Lc/d/a/b/i/j/f0;-><init>(Lc/d/a/b/e/m/e;Lcom/google/android/gms/location/LocationRequest;Lc/d/a/b/j/c;)V

    invoke-virtual {v1, v0}, Lc/d/a/b/e/m/e;->f(Lc/d/a/b/e/m/m/d;)Lc/d/a/b/e/m/m/d;

    return-void
.end method

.method public onConnectionFailed(Lc/d/a/b/e/a;)V
    .locals 0

    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 0

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    invoke-super {p0, p1}, Lb/m/d/l;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    sget p3, Lcom/zoho/livechat/android/R$layout;->siq_dialog_fragment_location:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_dialog_toolbar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/Toolbar;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchPrimaryColor(Landroid/content/Context;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p2

    check-cast p2, Lb/b/k/h;

    iget-object p3, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p2, p3}, Lb/b/k/h;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p2

    check-cast p2, Lb/b/k/h;

    invoke-virtual {p2}, Lb/b/k/h;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p2

    const/4 p3, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p2, p3}, Landroidx/appcompat/app/ActionBar;->o(Z)V

    invoke-virtual {p2, p3}, Landroidx/appcompat/app/ActionBar;->s(Z)V

    sget v0, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_cancel:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/app/ActionBar;->r(I)V

    :cond_0
    sget p2, Lcom/zoho/livechat/android/R$id;->siq_location_bottom_header:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->bottomHeader:Landroid/widget/RelativeLayout;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_location_suggestions_list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->suggestionsView:Landroidx/recyclerview/widget/RecyclerView;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_location_bottom_header_imagelayout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->bottomHeaderImageLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchPrimaryColor(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_location_bottom_header_image:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->bottomHeaderImageView:Landroid/widget/ImageView;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_location_bottom_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->bottomText:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getMediumFont()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->bottomText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchPrimaryColor(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_location_bottom_subtext:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->bottomSubText:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getRegularFont()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_map_radius_parent:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/cardview/widget/CardView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->radiusLayout:Landroidx/cardview/widget/CardView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_map_radius_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->radiusIconView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchPrimaryColor(Landroid/content/Context;)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_map_radius_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->radiusTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getMediumFont()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-object p1
.end method

.method public onMapReady(Lc/d/a/b/k/a;)V
    .locals 4

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->mMap:Lc/d/a/b/k/a;

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->getLatitude()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->getLongitude()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->getLatitude()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->getLongitude()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->serverLatLng:Lcom/google/android/gms/maps/model/LatLng;

    :cond_0
    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->getDeviceLocation()V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->getRadius()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->getRadius()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getDouble(Ljava/lang/Object;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->radius:D

    :cond_1
    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->updateLocationUI()V

    :cond_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    invoke-static {v0}, Lb/q/a/a;->a(Landroid/content/Context;)Lb/q/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->locationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lb/q/a/a;->d(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    const/16 p2, 0x190

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    array-length p1, p3

    if-lez p1, :cond_1

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->getDeviceLocation()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    invoke-static {v0}, Lb/q/a/a;->a(Landroid/content/Context;)Lb/q/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->locationReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "locationreceiver"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lb/q/a/a;->b(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public setLocationWidgetPicker(Lcom/zoho/livechat/android/ui/listener/LocationWidgetPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->locationWidgetPicker:Lcom/zoho/livechat/android/ui/listener/LocationWidgetPicker;

    return-void
.end method
